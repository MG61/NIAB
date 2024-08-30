import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/items/socialNetworks_items.dart';

class SocialNetworks extends StatelessWidget {
  const SocialNetworks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i=0; i < socialNetworksImage.length; i++)
          GestureDetector(
              onTap: () async {
                var url = socialNetworksLink[i]; // URL для открытия
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Не удалось открыть ссылку: $url';
                }
              },
              child:  Image(image: AssetImage(socialNetworksImage[i]))),
      ],
    );
  }
}
