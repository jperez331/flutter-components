import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Components'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.arrow_forward_ios),
                  title: const Text('Nombre de ruta'),
                  onTap: () {
                    Navigator.pushNamed(context, 'listview2');
                  },
                ),
            separatorBuilder: (__, ___) => const Divider(),
            itemCount: 20));
  }
}
