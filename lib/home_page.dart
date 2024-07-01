import 'package:deep_linking/details_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = "/homepage";
  static GoRoute route() {
    return GoRoute(
      path: routeName,
      builder: (context, state) => const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go(DetailsPage.routeName);
          },
          child: const Text(
            'Go to details',
          ),
        ),
      ),
    );
  }
}
