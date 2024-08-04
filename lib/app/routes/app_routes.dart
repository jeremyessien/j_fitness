import 'package:go_router/go_router.dart';

class AppRoutes {
  static final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        // builder: (context, state) => LoginScreen(), // Replace with actual screen
      ),
      GoRoute(
        path: '/home',
        // builder: (context, state) => HomeScreen(), // Replace with actual screen
      ),
      // Add more routes here as you create more screens
    ],
  );

  static GoRouter get router => _router;
}