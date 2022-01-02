import 'package:flutter/material.dart';
import 'package:para_yonetimi/core/components/card/not_found_navigation_widget.dart';
import 'package:para_yonetimi/core/constants/navigation/navigation_constants.dart';
import 'package:para_yonetimi/features/authenticate/login/login_screen.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.loginScreen:
        return normalNavigate(
            const LoginScreen(), NavigationConstants.loginScreen);

      /*
      case NavigationConstants.SETTINGS_WEB_VIEW:
        if (args.arguments is SettingsDynamicModel) {
          return normalNavigate(SettingsDynamicView(
            model: args.arguments as SettingsDynamicModel,
          ));
        }
        throw NavigateException<SettingsDynamicModel>(args.arguments);
*/

      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundNavigationWidget(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
        builder: (context) => widget,
        //analytciste görülecek olan sayfa ismi için pageName veriyoruz
        settings: RouteSettings(name: pageName));
  }
}
