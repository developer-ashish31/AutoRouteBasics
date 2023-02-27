import 'package:flutter/material.dart';
import 'package:my_auto_route/pages/nested_routes_pages/data/app_data.dart';

class SettingPage extends StatelessWidget {
  SettingPage({Key? key}) : super(key: key);
  final users = User.users;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Account Settings',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          Card(
            margin: EdgeInsets.only(
              top: 30,
            ),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 80.0,
                vertical: 30,
              ),
              child: Text(
                '''User234
user234@email.com''',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
