import 'package:go_router/go_router.dart';
import 'package:j_fitness/ui/screens/onboarding_screen.dart';
import 'package:j_fitness/ui/screens/splash_screen.dart';

class RoutePath {
  static const String homeScreen = 'homeScreen';
  static const String splashScreen = 'splashScreen';
  static const String onboardingScreen = 'onboardingScreen';
}

class AppRoutes {
  static final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        name: RoutePath.splashScreen,
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: RoutePath.onboardingScreen,
        path: '/onboarding-screen',
        builder: (context, state) =>  const OnboardingScreen(),
      ),
      // Add more routes here as you create more screens
    ],
  );

  static GoRouter get router => _router;
}

// Future<bool> isAuthenticated() async {
//   // final startupVM = StartupVM();
//   return await startupVM.checkAuthentication();
// }

//Todo: Implement 404 screens
final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      name: RoutePath.splashScreen,
      path: "/",
      builder: (context, state) => const SplashScreen(),
      // redirect: (context, state) async {
      //   debugPrint('In redirect ====>');
      //   final isAuth = await isAuthenticated();
      //   debugPrint('Redirect Auth State ====> $isAuth');
      //   if (!isAuth) {
      //     return '/';
      //   } else {
      //     return '/home';
      //   }
      // },
    ),
  ],
);

//Todo: Screens to be placed in login guard
