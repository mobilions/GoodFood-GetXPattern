part of 'app_pages.dart';

abstract class Routes {

  static const SPLASH = _Paths.SPLASH;
  static const WELCOME = _Paths.WELCOME;
  static const SIGNIN = _Paths.SIGNIN;
  static const SIGNUP = _Paths.SIGNUP;
  static const VERIFICATION = _Paths.VERIFICATION;
  static const RESETPASSWORD = _Paths.RESETPASSWORD;
  static const HOME = _Paths.HOME;

}

abstract class _Paths {

  static const SPLASH = '/splash'; // splash
  static const WELCOME = '/welcome'; // welcome
  static const SIGNIN = '/signIn'; // signIn
  static const SIGNUP = '/signUp'; // signUp
  static const VERIFICATION = '/verification'; // verification
  static const RESETPASSWORD = '/reset'; // reset password
  static const HOME = '/home'; // home
}