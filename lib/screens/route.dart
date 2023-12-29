import 'package:flutter/material.dart';
import 'package:todo/database/model/todo_model.dart';
import 'package:todo/screens/splash_screen.dart';
import 'package:todo/screens/task.dart';
import 'package:todo/screens/todo.dart';

class AppRoute {
  static String splashScreen = 'splash';
  static String todoScreen = 'todo';
  static String taskScreen = 'task';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    if (settings.name == splashScreen) {
      return splashRoute();
    } else if (settings.name == todoScreen) {
      return MaterialPageRoute(
          builder: (BuildContext context) => const Todo());
    } else if (settings.name == taskScreen) {
      if (settings.arguments is TodoModel) {
        return MaterialPageRoute(
            builder: (BuildContext context) => Task(
              todoModel: settings.arguments as TodoModel,
            ));
      } else {
        return splashRoute();
      }
    }
    return splashRoute();
  }

  static Route<dynamic> splashRoute() {
    return MaterialPageRoute(
        builder: (BuildContext context) => const SplashScreen());
  }
}
