import 'package:flutter/material.dart';
import '../../widgets/project_card.dart';
import '../../widgets/responsive_layout.dart';
import '../../constants/app_data.dart';

class ProjectsGrid extends StatelessWidget {
  const ProjectsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Featured Projects',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 4,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.tealAccent,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 40),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: ResponsiveLayout.isDesktop(context)
                  ? 3
                  : (ResponsiveLayout.isTablet(context) ? 2 : 1),
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
              childAspectRatio: 0.8,
            ),
            itemCount: AppData.projects.length,
            itemBuilder: (context, index) {
              return ProjectCard(project: AppData.projects[index]);
            },
          ),
        ],
      ),
    );
  }
}
