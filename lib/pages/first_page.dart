import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_auto_route/routes/app_router.gr.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("First Page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Test',
                style: TextStyle(fontSize: 22),
              ),
              TextButton(
                style: _buttonStyle(50, 200),
                onPressed: () {
                  context.popRoute();
                  // context.router.pop();
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Back to Home",
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
                  context.router
                      .push(SecondRoute(name: "Flutter Dev's", emp: 166));
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Go To Second Page",
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
                context.router
                      .replace(SecondRoute(name: "Flutter Dev's", emp: 166));
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Go To Second Page By Replace First",
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
