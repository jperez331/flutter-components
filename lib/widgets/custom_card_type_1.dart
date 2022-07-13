import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.book_rounded,
              color: AppTheme.primary,
            ),
            title: Text('Generic title'),
            subtitle: Text(
                'Mollit commodo officia sunt eu eu aliqua in incididunt in cillum Lorem.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (() {}), child: const Text('OK')),
                TextButton(onPressed: (() {}), child: const Text('Cancel'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
