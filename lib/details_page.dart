import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, this.data});
  static const String routeName = "/detailspage";
  static GoRoute route() {
    return GoRoute(
      path: routeName,
      builder: (context, state) {
        var data = state.uri.queryParameters;

        return DetailsPage(
          data: data,
        );
      },
    );
  }

  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is details'),
      ),
      body: Text("$data"),
    );
  }
}
