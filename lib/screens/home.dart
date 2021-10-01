import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/menu/side_menue.dart';
import 'package:real_state/responsive.dart';

class Home extends StatelessWidget {
  const Home({Key? key, required this.mainSection}) : super(key: key);
  final Widget mainSection;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                builder: (builder) => IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(builder).openDrawer();
                  },
                ),
              )),
      drawer: SideMenueSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 1440.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 2,
                    child: SideMenueSection(),
                  ),
                SizedBox(
                  width: kDefaultPadding,
                ),
                Expanded(
                  flex: 7,
                  child: mainSection,
                ),
                SizedBox(
                  width: kDefaultPadding,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
