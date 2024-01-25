import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:good_foods/routes/app_pages.dart';
import 'config/size_config.dart';
import 'modules/splash_module/splash_bindings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());

}

GlobalKey<NavigatorState> navState = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Good Foods Restaurant',
      navigatorKey: navState,
      getPages: AppPages.routes,
      initialRoute: Routes.SPLASH,
      initialBinding: SplashBinding(),
    );
  }
}
