import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:newfingerprint/view/fingerprint_page.dart';
import 'package:newfingerprint/view/home_page.dart';

class Routes {
  static final routes = [
    GetPage(name: '/HomePage', page: () => HomePage()),
    GetPage(name: '/FingerprintPage', page: () => FingerprintPage())
  ];
}
