import 'package:get/get.dart';
import 'package:good_foods/modules/home_module/home_bindings.dart';
import 'package:good_foods/modules/home_module/home_screen.dart';
import 'package:good_foods/modules/welcome_module/welcome_bindings.dart';
import 'package:good_foods/modules/welcome_module/welcome_screen.dart';
import '../modules/reset_password_module/reset_password_bindings.dart';
import '../modules/reset_password_module/reset_password_screen.dart';
import '../modules/signIn_module/signIn_bindings.dart';
import '../modules/signIn_module/signIn_screen.dart';
import '../modules/signup_module/signup_bindings.dart';
import '../modules/signup_module/signup_screen.dart';
import '../modules/splash_module/splash_bindings.dart';
import '../modules/splash_module/splash_screen.dart';
import '../modules/verification_module/verification_bindings.dart';
import '../modules/verification_module/verification_screen.dart';

part 'app_routes.dart';

abstract class AppPages {
  const AppPages._();

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      transition: Transition.noTransition,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.WELCOME,
      transition: Transition.noTransition,
      page: () => const WelcomeScreen(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      transition: Transition.noTransition,
      page: () => const SignUpScreen(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: Routes.SIGNIN,
      transition: Transition.noTransition,
      page: () => const SignInScreen(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: Routes.VERIFICATION,
      transition: Transition.noTransition,
      page: () => const VerificationCodeScreen(),
      binding: VerificationCodeBinding(),
    ),
    GetPage(
      name: Routes.RESETPASSWORD,
      transition: Transition.noTransition,
      page: () => const ResetPasswordScreen(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      transition: Transition.noTransition,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}