import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactSection(title: 'Address', text: 'Station Street 5'),
        buildContactSection(title: 'Country', text: 'Egypt'),
        buildContactSection(title: 'Email', text: 'ahmedgoda@gmail.com'),
        buildContactSection(title: 'Mobile', text: '+201544568736'),
        buildContactSection(title: 'Website', text: 'www.examble.com'),
      ],
    );
  }

  Padding buildContactSection({required String title, required String text}) {
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(width: kDefaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
