import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage(
      {Key? key,
      required this.name,
      required this.dsg,
      required this.onRateEmployee})
      : super(key: key);

  final String name;
  final String dsg;
  final void Function(int) onRateEmployee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Third Page"),
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
                "Designation : $dsg",
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                style: _buttonStyle(50, 200),
                onPressed: () {
                  onRateEmployee(5);
                  context.router.pop();
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Go Back And Return Result",
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
