import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_auto_route/routes/app_router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Flutter AutoRoute Demo"),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),

                /// First Page Button
                TextButton(
                  style: _buttonStyle(50, 200),
                  onPressed: () {
                    context.router.push(const FirstRoute());

                    // context.pushRoute(const FirstRoute());
                  },
                  child: const Text(
                    "First Page",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Spacer(),

                /// Second Page Button
                TextButton(
                  style: _buttonStyle(50, 200),
                  onPressed: () {
                    context.router
                        .push(SecondRoute(name: "Flutter Dev's", emp: 165));
                  },
                  child: const Text(
                    "Second Page",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Spacer(),

                /// Third Page Button
                TextButton(
                  style: _buttonStyle(50, 200),
                  onPressed: () {
                    context.router.push(ThirdRoute(
                        name: "Flutter Dev's",
                        dsg: "Software Engineer",
                        onRateEmployee: (rating) {
                          var snackBar = SnackBar(
                              content: Text('Employee Rating: $rating'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }));
                  },
                  child: const Text(
                    "Third Page Passing Argument and Return Result with "
                    "Callback",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Spacer(),

                /// Fourth Page Button
                TextButton(
                  style: _buttonStyle(50, 200),
                  onPressed: () {
                    context.router.pushNamed('/fourthPage');
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Fourth Page With Path Navigation",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const Spacer(),

                /// Fifth Page Button
                TextButton(
                  style: _buttonStyle(50, 200),
                  onPressed: () {
                    context.router.pushNamed('/fifthPage/3700/Ashish');
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Fifth Page With Path Navigation And Path Params",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const Spacer(),

                /// Sixth Page Button
                TextButton(
                  style: _buttonStyle(50, 200),
                  onPressed: () {
                    context.router.pushNamed(
                        '/sixthPage?firstName=Ashish&surname=Kushwaha');
                    // context.router.navigate(SixthRoute(firstName: 'Ashish',lastName: 'Kushwaha'));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Sixth Page With Path Navigation And Query Params",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const Spacer(),

                /// Seventh Page Button
                TextButton(
                  style: _buttonStyle(50, 200),
                  onPressed: () async {
                    var result = await context.router.push<int>(SeventhRoute(
                        name: "Flutter Dev's", dsg: "Software Engineer"));
                    var snackBar =
                        SnackBar(content: Text('Employee ' 'Rating: $result'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text(
                    "Seventh Page Passing Argument and Return Result with "
                    " Pop Completer",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Spacer(),
                /*TextButton(
                  style: _buttonStyle(50, 200),
                  onPressed: () async {
                    context.router.push(const DashboardRoute());
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Nested Routes",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const Spacer(),*/
              ],
            ),
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
