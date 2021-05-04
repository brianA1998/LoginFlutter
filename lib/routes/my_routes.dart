import 'package:get/route_manager.dart';
import 'package:loginflutter/pages/home_page.dart';
import 'package:loginflutter/pages/principal_page.dart';

routes() => [
      GetPage(name: "/home", page: () => HomePage()),
      //GetPage(name: "/registration", page: () => RegisterPage()),
      GetPage(
          name: "/principalpage",
          page: () => PrincipalPage(),
          transition: Transition.zoom),
    ];
