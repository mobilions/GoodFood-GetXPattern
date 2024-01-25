import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../utils/utils.dart';


class ApiProvider {
  Dio dio = Dio();

  Future<dynamic> postAPICall(String url, FormData formData,
      { Function(int, int)? onSendProgress}) async {
    ConnectivityResult connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {

      Map<String, String>? headersData;
      headersData = {"accept": 'application/json'};

      if (kDebugMode) {
        debugPrint("URL === $url");
        debugPrint("HEADERS === $headersData");
        debugPrint("BODY === ${formData.fields}");
      }
      var responseJson;
      try {
        final response = await dio
            .post(url,
                data: formData,
                options: Options(
                  headers: headersData,
                ),
                onSendProgress: onSendProgress)
            .timeout(
              Duration(seconds: 60),
            );

        responseJson = _response(response);

        if (kDebugMode) {
          debugPrint("RESPONSE === $responseJson");
        }
      } on SocketException {
        throw FetchDataException('No Internet connection');
      } on TimeoutException {
        throw FetchDataException('Something went wrong, try again later');
      }
      return responseJson;
    } else {
      Utils.showToast("No internet connection");
      return;
    }
  }

  dynamic _response(Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = response.data;
        return responseJson;
      case 400:
        throw BadRequestException(response.data.toString());
      case 401:
        var responseJson = response.data;
        return responseJson;
      case 422:
        var responseJson = response.data;
        return responseJson;
      case 403:
        throw UnauthorisedException(response.data);
      case 500:
      default:
        throw FetchDataException(
            'Error occurred while Communication with Server with StatusCode: ${response.statusCode}');
    }
  }
}

class CustomException implements Exception {
  final message;
  final prefix;

  CustomException([this.message, this.prefix]);

  @override
  String toString() {
    return "$prefix$message";
  }
}

class FetchDataException extends CustomException {
  FetchDataException([message])
      : super(message, 'Error During Communication: ');
}

class BadRequestException extends CustomException {
  BadRequestException([message]) : super(message, 'Invalid Request: ');
}

class UnauthorisedException extends CustomException {
  UnauthorisedException([message]) : super(message, 'Unauthorised: ');
}

class InvalidInputException extends CustomException {
  InvalidInputException([message]) : super(message, 'Invalid Input: ');
}