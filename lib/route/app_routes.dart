import 'package:get/get.dart';
import 'package:test_makerindo/module/auth/bindings/auth_binding.dart';
import 'package:test_makerindo/module/auth/view/auth_login_view.dart';
import 'package:test_makerindo/module/home/bindings/home_binding.dart';
import 'package:test_makerindo/module/home/view/home_view.dart';

class AppPages {
  AppPages._();

  static const INITIAL = "/";

  static final routes = [
    GetPage(
      name: '/',
      page: () => const AuthLoginView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: '/home',
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
