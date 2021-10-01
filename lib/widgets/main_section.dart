import 'package:flutter/material.dart';
import 'package:real_state/screens/home.dart';
import 'package:real_state/widgets/projects.dart';

import 'client.dart';
import 'homde_banner.dart';
import 'icon_info.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Home(
      mainSection: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(),
            IconInfo(),
            Projects(),
            ClientRecommendation(),
          ],
        ),
      ),
    );
  }
}
