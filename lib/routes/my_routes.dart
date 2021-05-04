import 'package:get/route_manager.dart';
import 'package:loginflutter/pages/home_page.dart';
import 'package:loginflutter/pages/login_page.dart';
import 'package:loginflutter/pages/principal_page.dart';
import 'package:loginflutter/pages/register_login_page.dart';

routes() => [
      GetPage(name: "/home", page: () => HomePage()),
      GetPage(name: "/registration", page: () => RegisterLoginPage()),
      GetPage(
          name: "/principalpage",
          page: () => PrincipalPage(),
          transition: Transition.zoom),
      GetPage(name: "/loginpage", page: () => LoginPage()),
    ];
