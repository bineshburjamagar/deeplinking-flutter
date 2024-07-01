import 'package:deep_linking/details_page.dart';
import 'package:deep_linking/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }

  final router = GoRouter(
    initialLocation: HomePage.routeName,
    routes: [
      HomePage.route(),
      DetailsPage.route(),
    ],
  );
}
