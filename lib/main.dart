import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_auto_route/observer/my_observer.dart';
import 'package:my_auto_route/routes/app_router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // make sure you don't initiate your router
  // inside of the build function.
  final _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate()/*AutoRouterDelegate(_appRouter
        .delegate(),
          navigatorObservers: () => [MyObserver()])*/,
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: ThemeData(
        fontFamily: 'Georgia',
        //text styling
        textTheme: const TextTheme(
          headline6: TextStyle(
              fontSize: 22.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
      debugShowCheckedModeBanner: true,
    );
  }
}
