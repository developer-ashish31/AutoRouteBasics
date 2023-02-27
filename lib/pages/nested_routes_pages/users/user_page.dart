import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_auto_route/pages/nested_routes_pages/data/app_data.dart';
import 'package:my_auto_route/pages/nested_routes_pages/widgets/user_avatar.dart';
import 'package:my_auto_route/routes/app_router.gr.dart';

class UserPage extends StatelessWidget {
  UserPage({Key? key}) : super(key: key);
  final users = User.users;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < users.length; i++)
              UserAvatar(
                  avatarColor: users[i].color,
                  userName: 'User ${users[i].id}',
                  onAvatarTap: () {
                    context.router.push(
                     UserProfileRoute(
                        userId: users[i].id,
                      ),
                    );
                  }),
          ],
        ),
      ),
    );
  }
}
