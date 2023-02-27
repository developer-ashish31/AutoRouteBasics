// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i16;

import '../pages/fifth_page.dart' as _i6;
import '../pages/first_page.dart' as _i2;
import '../pages/fourth_page.dart' as _i5;
import '../pages/home_page.dart' as _i1;
import '../pages/nested_routes_pages/dashboard_page.dart' as _i9;
import '../pages/nested_routes_pages/posts/post_page.dart' as _i12;
import '../pages/nested_routes_pages/posts/single_post_page.dart' as _i13;
import '../pages/nested_routes_pages/settings/settings_page.dart' as _i11;
import '../pages/nested_routes_pages/users/user_page.dart' as _i14;
import '../pages/nested_routes_pages/users/user_profile_page.dart' as _i15;
import '../pages/second_page.dart' as _i3;
import '../pages/seventh_page.dart' as _i8;
import '../pages/sixth_page.dart' as _i7;
import '../pages/third_page.dart' as _i4;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    FirstRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.FirstPage(),
      );
    },
    SecondRoute.name: (routeData) {
      final args = routeData.argsAs<SecondRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.SecondPage(
          key: args.key,
          name: args.name,
          emp: args.emp,
        ),
      );
    },
    ThirdRoute.name: (routeData) {
      final args = routeData.argsAs<ThirdRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ThirdPage(
          key: args.key,
          name: args.name,
          dsg: args.dsg,
          onRateEmployee: args.onRateEmployee,
        ),
      );
    },
    FourthRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.FourthPage(),
      );
    },
    FifthRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<FifthRouteArgs>(
          orElse: () => FifthRouteArgs(
                userID: pathParams.optString('userID'),
                userName: pathParams.optString('userName'),
              ));
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.FifthPage(
          key: args.key,
          userID: args.userID,
          userName: args.userName,
        ),
      );
    },
    SixthRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<SixthRouteArgs>(
          orElse: () => SixthRouteArgs(
                firstName: queryParams.optString('firstName'),
                lastName: queryParams.optString('surname'),
              ));
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.SixthPage(
          key: args.key,
          firstName: args.firstName,
          lastName: args.lastName,
        ),
      );
    },
    SeventhRoute.name: (routeData) {
      final args = routeData.argsAs<SeventhRouteArgs>();
      return _i10.MaterialPageX<int>(
        routeData: routeData,
        child: _i8.SeventhPage(
          key: args.key,
          name: args.name,
          dsg: args.dsg,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.DashboardPage(),
      );
    },
    PostRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.EmptyRouterPage(),
      );
    },
    UserRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.EmptyRouterPage(),
      );
    },
    SettingRouter.name: (routeData) {
      final args = routeData.argsAs<SettingRouterArgs>(
          orElse: () => const SettingRouterArgs());
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.SettingPage(key: args.key),
      );
    },
    PostRoute.name: (routeData) {
      final args =
          routeData.argsAs<PostRouteArgs>(orElse: () => const PostRouteArgs());
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.PostPage(key: args.key),
      );
    },
    SinglePostRoute.name: (routeData) {
      final args = routeData.argsAs<SinglePostRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i13.SinglePostPage(
          key: args.key,
          postId: args.postId,
        ),
      );
    },
    UserRoute.name: (routeData) {
      final args =
          routeData.argsAs<UserRouteArgs>(orElse: () => const UserRouteArgs());
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i14.UserPage(key: args.key),
      );
    },
    UserProfileRoute.name: (routeData) {
      final args = routeData.argsAs<UserProfileRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i15.UserProfilePage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i10.RouteConfig(
          FirstRoute.name,
          path: '/first-page',
        ),
        _i10.RouteConfig(
          SecondRoute.name,
          path: '/second-page',
        ),
        _i10.RouteConfig(
          ThirdRoute.name,
          path: '/third-page',
        ),
        _i10.RouteConfig(
          FourthRoute.name,
          path: '/fourthPage',
        ),
        _i10.RouteConfig(
          FifthRoute.name,
          path: '/fifthPage/:userID/:userName',
        ),
        _i10.RouteConfig(
          SixthRoute.name,
          path: '/sixthPage',
        ),
        _i10.RouteConfig(
          SeventhRoute.name,
          path: '/seventh-page',
        ),
        _i10.RouteConfig(
          DashboardRoute.name,
          path: '/dashboard',
          children: [
            _i10.RouteConfig(
              PostRouter.name,
              path: 'posts',
              parent: DashboardRoute.name,
              children: [
                _i10.RouteConfig(
                  PostRoute.name,
                  path: '',
                  parent: PostRouter.name,
                ),
                _i10.RouteConfig(
                  SinglePostRoute.name,
                  path: 'single-post-page',
                  parent: PostRouter.name,
                ),
              ],
            ),
            _i10.RouteConfig(
              UserRouter.name,
              path: 'users',
              parent: DashboardRoute.name,
              children: [
                _i10.RouteConfig(
                  UserRoute.name,
                  path: '',
                  parent: UserRouter.name,
                ),
                _i10.RouteConfig(
                  UserProfileRoute.name,
                  path: 'user-profile-page',
                  parent: UserRouter.name,
                ),
              ],
            ),
            _i10.RouteConfig(
              SettingRouter.name,
              path: 'settings',
              parent: DashboardRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.FirstPage]
class FirstRoute extends _i10.PageRouteInfo<void> {
  const FirstRoute()
      : super(
          FirstRoute.name,
          path: '/first-page',
        );

  static const String name = 'FirstRoute';
}

/// generated route for
/// [_i3.SecondPage]
class SecondRoute extends _i10.PageRouteInfo<SecondRouteArgs> {
  SecondRoute({
    _i16.Key? key,
    required String name,
    required int emp,
  }) : super(
          SecondRoute.name,
          path: '/second-page',
          args: SecondRouteArgs(
            key: key,
            name: name,
            emp: emp,
          ),
        );

  static const String name = 'SecondRoute';
}

class SecondRouteArgs {
  const SecondRouteArgs({
    this.key,
    required this.name,
    required this.emp,
  });

  final _i16.Key? key;

  final String name;

  final int emp;

  @override
  String toString() {
    return 'SecondRouteArgs{key: $key, name: $name, emp: $emp}';
  }
}

/// generated route for
/// [_i4.ThirdPage]
class ThirdRoute extends _i10.PageRouteInfo<ThirdRouteArgs> {
  ThirdRoute({
    _i16.Key? key,
    required String name,
    required String dsg,
    required void Function(int) onRateEmployee,
  }) : super(
          ThirdRoute.name,
          path: '/third-page',
          args: ThirdRouteArgs(
            key: key,
            name: name,
            dsg: dsg,
            onRateEmployee: onRateEmployee,
          ),
        );

  static const String name = 'ThirdRoute';
}

class ThirdRouteArgs {
  const ThirdRouteArgs({
    this.key,
    required this.name,
    required this.dsg,
    required this.onRateEmployee,
  });

  final _i16.Key? key;

  final String name;

  final String dsg;

  final void Function(int) onRateEmployee;

  @override
  String toString() {
    return 'ThirdRouteArgs{key: $key, name: $name, dsg: $dsg, onRateEmployee: $onRateEmployee}';
  }
}

/// generated route for
/// [_i5.FourthPage]
class FourthRoute extends _i10.PageRouteInfo<void> {
  const FourthRoute()
      : super(
          FourthRoute.name,
          path: '/fourthPage',
        );

  static const String name = 'FourthRoute';
}

/// generated route for
/// [_i6.FifthPage]
class FifthRoute extends _i10.PageRouteInfo<FifthRouteArgs> {
  FifthRoute({
    _i16.Key? key,
    String? userID,
    String? userName,
  }) : super(
          FifthRoute.name,
          path: '/fifthPage/:userID/:userName',
          args: FifthRouteArgs(
            key: key,
            userID: userID,
            userName: userName,
          ),
          rawPathParams: {
            'userID': userID,
            'userName': userName,
          },
        );

  static const String name = 'FifthRoute';
}

class FifthRouteArgs {
  const FifthRouteArgs({
    this.key,
    this.userID,
    this.userName,
  });

  final _i16.Key? key;

  final String? userID;

  final String? userName;

  @override
  String toString() {
    return 'FifthRouteArgs{key: $key, userID: $userID, userName: $userName}';
  }
}

/// generated route for
/// [_i7.SixthPage]
class SixthRoute extends _i10.PageRouteInfo<SixthRouteArgs> {
  SixthRoute({
    _i16.Key? key,
    String? firstName,
    String? lastName,
  }) : super(
          SixthRoute.name,
          path: '/sixthPage',
          args: SixthRouteArgs(
            key: key,
            firstName: firstName,
            lastName: lastName,
          ),
          rawQueryParams: {
            'firstName': firstName,
            'surname': lastName,
          },
        );

  static const String name = 'SixthRoute';
}

class SixthRouteArgs {
  const SixthRouteArgs({
    this.key,
    this.firstName,
    this.lastName,
  });

  final _i16.Key? key;

  final String? firstName;

  final String? lastName;

  @override
  String toString() {
    return 'SixthRouteArgs{key: $key, firstName: $firstName, lastName: $lastName}';
  }
}

/// generated route for
/// [_i8.SeventhPage]
class SeventhRoute extends _i10.PageRouteInfo<SeventhRouteArgs> {
  SeventhRoute({
    _i16.Key? key,
    required String name,
    required String dsg,
  }) : super(
          SeventhRoute.name,
          path: '/seventh-page',
          args: SeventhRouteArgs(
            key: key,
            name: name,
            dsg: dsg,
          ),
        );

  static const String name = 'SeventhRoute';
}

class SeventhRouteArgs {
  const SeventhRouteArgs({
    this.key,
    required this.name,
    required this.dsg,
  });

  final _i16.Key? key;

  final String name;

  final String dsg;

  @override
  String toString() {
    return 'SeventhRouteArgs{key: $key, name: $name, dsg: $dsg}';
  }
}

/// generated route for
/// [_i9.DashboardPage]
class DashboardRoute extends _i10.PageRouteInfo<void> {
  const DashboardRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          path: '/dashboard',
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i10.EmptyRouterPage]
class PostRouter extends _i10.PageRouteInfo<void> {
  const PostRouter({List<_i10.PageRouteInfo>? children})
      : super(
          PostRouter.name,
          path: 'posts',
          initialChildren: children,
        );

  static const String name = 'PostRouter';
}

/// generated route for
/// [_i10.EmptyRouterPage]
class UserRouter extends _i10.PageRouteInfo<void> {
  const UserRouter({List<_i10.PageRouteInfo>? children})
      : super(
          UserRouter.name,
          path: 'users',
          initialChildren: children,
        );

  static const String name = 'UserRouter';
}

/// generated route for
/// [_i11.SettingPage]
class SettingRouter extends _i10.PageRouteInfo<SettingRouterArgs> {
  SettingRouter({_i16.Key? key})
      : super(
          SettingRouter.name,
          path: 'settings',
          args: SettingRouterArgs(key: key),
        );

  static const String name = 'SettingRouter';
}

class SettingRouterArgs {
  const SettingRouterArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'SettingRouterArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.PostPage]
class PostRoute extends _i10.PageRouteInfo<PostRouteArgs> {
  PostRoute({_i16.Key? key})
      : super(
          PostRoute.name,
          path: '',
          args: PostRouteArgs(key: key),
        );

  static const String name = 'PostRoute';
}

class PostRouteArgs {
  const PostRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'PostRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.SinglePostPage]
class SinglePostRoute extends _i10.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({
    _i16.Key? key,
    required int postId,
  }) : super(
          SinglePostRoute.name,
          path: 'single-post-page',
          args: SinglePostRouteArgs(
            key: key,
            postId: postId,
          ),
        );

  static const String name = 'SinglePostRoute';
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({
    this.key,
    required this.postId,
  });

  final _i16.Key? key;

  final int postId;

  @override
  String toString() {
    return 'SinglePostRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [_i14.UserPage]
class UserRoute extends _i10.PageRouteInfo<UserRouteArgs> {
  UserRoute({_i16.Key? key})
      : super(
          UserRoute.name,
          path: '',
          args: UserRouteArgs(key: key),
        );

  static const String name = 'UserRoute';
}

class UserRouteArgs {
  const UserRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'UserRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i15.UserProfilePage]
class UserProfileRoute extends _i10.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({
    _i16.Key? key,
    required int userId,
  }) : super(
          UserProfileRoute.name,
          path: 'user-profile-page',
          args: UserProfileRouteArgs(
            key: key,
            userId: userId,
          ),
        );

  static const String name = 'UserProfileRoute';
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({
    this.key,
    required this.userId,
  });

  final _i16.Key? key;

  final int userId;

  @override
  String toString() {
    return 'UserProfileRouteArgs{key: $key, userId: $userId}';
  }
}
