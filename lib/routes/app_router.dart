import 'package:auto_route/auto_route.dart';
import 'package:my_auto_route/pages/fifth_page.dart';
import 'package:my_auto_route/pages/first_page.dart';
import 'package:my_auto_route/pages/fourth_page.dart';
import 'package:my_auto_route/pages/home_page.dart';
import 'package:my_auto_route/pages/nested_routes_pages/dashboard_page.dart';
import 'package:my_auto_route/pages/nested_routes_pages/posts/post_page.dart';
import 'package:my_auto_route/pages/nested_routes_pages/posts/single_post_page.dart';
import 'package:my_auto_route/pages/nested_routes_pages/settings/settings_page.dart';
import 'package:my_auto_route/pages/nested_routes_pages/users/user_page.dart';
import 'package:my_auto_route/pages/nested_routes_pages/users/user_profile_page.dart';
import 'package:my_auto_route/pages/second_page.dart';
import 'package:my_auto_route/pages/seventh_page.dart';
import 'package:my_auto_route/pages/sixth_page.dart';
import 'package:my_auto_route/pages/third_page.dart';

// flutter pub run build_runner build —-delete-conflicting-outputs
@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: HomePage, initial: true, name: 'HomeRoute'),
  AutoRoute(page: FirstPage),
  AutoRoute(page: SecondPage),
  AutoRoute(page: ThirdPage),
  AutoRoute(path: '/fourthPage', page: FourthPage),
  // Path Parameters (Dyanmic Segments)
  AutoRoute(path: '/fifthPage/:userID/:userName', page: FifthPage),

  // Query Parameters (Dyanmic Segments)
  AutoRoute(path: '/sixthPage', page: SixthPage),
  AutoRoute<int>(page: SeventhPage),




  //nested routes
  AutoRoute(path: '/dashboard', page: DashboardPage, children: [
    AutoRoute(
        path: 'posts',
        name: 'PostRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: '', page: PostPage),
          AutoRoute(page: SinglePostPage),
        ]),
    AutoRoute(
        path: 'users',
        name: 'UserRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(page: UserPage, initial: true),
          AutoRoute(page: UserProfilePage),
        ]),
    AutoRoute(path: 'settings', name: 'SettingRouter', page: SettingPage),
  ]),
])
class $AppRouter {}

// RedirectRoute(path: '', redirectTo: 'post-page'),
// RedirectRoute(path: '/', redirectTo: '/first-page'),