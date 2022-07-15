import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

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
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppTheme.primary,
            ),
            onTap: () {
              Navigator.pushNamed(context, 'card');
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
