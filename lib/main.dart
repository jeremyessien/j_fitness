import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/routes/app_routes.dart';
import 'app/theme/app_theme.dart';
import 'core/providers/providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AllProviders.providers,
      child: MaterialApp.router(
        title: 'Fitness App',
        theme: AppTheme.lightTheme,
        routerDelegate: AppRoutes.router.routerDelegate,
        routeInformationParser: AppRoutes.router.routeInformationParser,
      ),
    );
  }
}
