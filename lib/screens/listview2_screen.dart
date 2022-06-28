import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Fortnite',
    'Fall Guys',
    'League of Leguends',
    'Subnautica',
    'Minecraft'
  ];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview 2'),
          elevation: 0,
          backgroundColor: Colors.red[700],
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.red,
            ),
            onTap: () {},
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
