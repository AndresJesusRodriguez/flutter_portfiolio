import 'package:flutter/material.dart';
import 'package:flutter_portfolio/project_cards.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProjectCard> projects = [
      ProjectCard(
          title: 'Design & Code Website',
          description:
              'As a part of the Design & Code Registered student organization I helped to create the Club\'s initial website using react and tailwind css primarily working on the sites navigation.',
          url:
              'https://github.com/designandcodeucf-organization/designandcodeucf'),
      ProjectCard(
          title: 'React-Native Exercise App',
          description:
              'A simple exercise app created using react native utilizing different hooks and utilizing useState to create components to implement, timers and repetition exercise counters and suggestions for next exercises.',
          url: 'https://github.com/AndresJesusRodriguez/exercise-app-demo'),
      ProjectCard(
          title: 'NextJS dashboard project',
          description:
              'Part of a multiple chapter course on the Next.js docs to teach and learn the framework and It\'s features including server side rendering.',
          url: 'https://github.com/AndresJesusRodriguez/nextjs-dashboard'),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 125),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return projects[index];
        },
      ),
    );
  }
}
