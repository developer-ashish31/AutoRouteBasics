import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_auto_route/routes/app_router.gr.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
    required this.name,
    required this.emp,
  }) : super(key: key);

  final String name;
  final int emp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Second Page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Name : $name",
                style: const TextStyle(fontSize: 22),
              ),
              Text(
                "Employee : $emp",
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 10),
              TextButton(
                style: _buttonStyle(50, 200),
                onPressed: () {
                  context.router.pop();
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Go Back Previous Page",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                style: _buttonStyle(50, 200),
                onPressed: () {
                  // context.router.popUntilRoot();
                  context.router.popUntil((route) {
                    if (route.settings.name != HomeRoute.name) return false;
                    return true;
                  });
                  // context.router.popUntilRouteWithName('HomeRoute');
                  // context.router.popUntilRouteWithName(HomeRoute.name);
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Pop To Root",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buttonStyle(double height, double width) => TextButton.styleFrom(
        minimumSize: Size(width, height),
        backgroundColor: Colors.red,
        padding: const EdgeInsets.all(0),
      );
}
