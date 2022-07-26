import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://frases.top/wp-content/uploads/2020/01/imagen-de-fornite.jpg',
              description: 'Dark season Fortnite',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://images.wallpapersden.com/image/download/fortnite-resistance-4k_bWdobmeUmZqaraWkpJRobWllrWdma2U.jpg',
              description: 'Last Season Fortnite',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://c4.wallpaperflare.com/wallpaper/332/936/882/season-5-8k-4k-fortnite-wallpaper-preview.jpg',
              description: 'Old Season Fortnite',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl: 'https://wallpaperaccess.com/full/7741406.jpg',
              description: 'The Rock Season Fortnite',
            ),
            SizedBox(height: 10),
            CustomCardType2(
                imageUrl:
                    'https://i.pinimg.com/474x/1f/69/19/1f691958619348391c33b655b21522ac.jpg',
                description: 'Esto es un elemento ')
          ],
        ));
  }
}
