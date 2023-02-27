import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SixthPage extends StatelessWidget {
  const SixthPage(
      {Key? key,
      @queryParam this.firstName,
      @QueryParam('surname') this.lastName})
      : super(key: key);
  final String? firstName;
  final String? lastName;

  @override
  Widget build(BuildContext context) {
    var queryParams = context.routeData.queryParams;
    // var queryParams = RouteData.of(context).queryParams;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Sixth Page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Navigation With Path And Getting Query Params",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
              Text(
                "Last Name : $lastName",
                style: const TextStyle(fontSize: 22),
              ),
              Text(
                "First Name : ${queryParams.get('firstName')}",
                style: const TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
