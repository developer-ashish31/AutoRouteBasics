import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_auto_route/routes/app_router.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: Colors.indigo,
      appBarBuilder: (_, tabsRouter) => AppBar(
        leading: const AutoLeadingButton(),
        backgroundColor: Colors.indigo,
        title: const Text('Bottom Navigation Demo'),
        centerTitle: true,
      ),
      routes: [const PostRouter(), const UserRouter(), SettingRouter()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            SalomonBottomBarItem(
                selectedColor: Colors.amberAccent,
                icon: const Icon(
                  Icons.post_add,
                  color: Colors.white,
                  size: 30.0,
                ),
                title: const Text('Posts')),
            SalomonBottomBarItem(
                selectedColor: Colors.blue,
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30.0,
                ),
                title: const Text('Users')),
            SalomonBottomBarItem(
                selectedColor: Colors.pinkAccent,
                icon: const Icon(
                  Icons.post_add,
                  color: Colors.white,
                  size: 30.0,
                ),
                title: const Text('Settings'))
          ],
        );
      },
    );
  }
}
