import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_auto_route/routes/app_router.gr.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({
    Key? key,
    @pathParam this.userID,
    @PathParam('userName') this.userName,
  }) : super(key: key);
  final String? userID;
  final String? userName;

  @override
  Widget build(BuildContext context) {
    var pathParams = RouteData.of(context).pathParams;
    // or using the extension
    // var pathParams = context.routeData.pathParams;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Fifth Page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Navigation With Path And Getting Path Params",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
              Text(
                "User Id : $userID",
                style: const TextStyle(fontSize: 22),
              ),
              Text(
                "User Name : $userName",
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 10),
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
// ${pathParams.get('userName')}
