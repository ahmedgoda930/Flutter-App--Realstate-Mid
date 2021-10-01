import 'package:flutter/material.dart';
import 'package:real_state/constants.dart';
import 'package:real_state/models/projects.dart';
import 'package:real_state/responsive.dart';
import 'package:real_state/widgets/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        Responsive(
          tablet: buildGridView(
            itemcount: demoProjects.length,
            crossaxixcount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
            asspectratio: .75,
            itembuilder: (BuildContext context, int index) {
              return ProjectCard(
                project: demoProjects[index],
              );
            },
          ),
          mobileLarge: buildGridView(
            itemcount: demoProjects.length,
            crossaxixcount: 2,
            asspectratio: .75,
            itembuilder: (BuildContext context, int index) {
              return ProjectCard(
                project: demoProjects[index],
              );
            },
          ),
          desktop: buildGridView(
            itemcount: demoProjects.length,
            crossaxixcount: 3,
            asspectratio: .75,
            itembuilder: (BuildContext context, int index) {
              return ProjectCard(
                project: demoProjects[index],
              );
            },
          ),
          mobile: buildGridView(
            itemcount: demoProjects.length,
            crossaxixcount: 1,
            asspectratio: .75,
            itembuilder: (BuildContext context, int index) {
              return ProjectCard(
                project: demoProjects[index],
              );
            },
          ),
        )
      ],
    );
  }

  GridView buildGridView(
      {required int itemcount,
      required int crossaxixcount,
      required double asspectratio,
      required IndexedWidgetBuilder itembuilder}) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossaxixcount,
        childAspectRatio: asspectratio,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
      ),
      itemCount: itemcount,
      shrinkWrap: true,
      itemBuilder: itembuilder,
    );
  }
}
