import 'package:flutter/material.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('movie name'),
        );
      },
    ));
  }
}
