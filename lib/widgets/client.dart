import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/models/recommendation.dart';

class ClientRecommendation extends StatelessWidget {
  const ClientRecommendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        SingleChildScrollView(
          child: Row(
            children: List.generate(
              demoRecommendations.length,
              (index) => Padding(
                padding: EdgeInsets.only(right: kDefaultPadding),
                child: Container(
                  width: 400,
                  padding: EdgeInsets.all(kDefaultPadding),
                  color: kSecondaryColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage(demoRecommendations[index].image!),
                          radius: 30,
                        ),
                        title: Text(
                          demoRecommendations[index].name!,
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        subtitle: Text(
                          demoRecommendations[index].source!,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      Text(
                        demoRecommendations[index].text!,
                        style: TextStyle(height: 1.5),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          scrollDirection: Axis.horizontal,
        ),
      ],
    );
  }
}
