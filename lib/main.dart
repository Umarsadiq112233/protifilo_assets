import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants/app_theme.dart';
import 'constants/app_data.dart';
import 'widgets/side_navigation.dart';
import 'widgets/responsive_layout.dart';
import 'views/sections/header_section.dart';
import 'views/sections/about_section.dart';
import 'views/sections/projects_grid.dart';
import 'views/sections/skills_section.dart';
import 'views/sections/contact_section.dart';
import 'utils/url_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modern Portfolio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const MainDashboard(),
    );
  }
}

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  final ScrollController _scrollController = ScrollController();
  int _selectedIndex = 0;

  final List<GlobalKey> _keys = List.generate(5, (_) => GlobalKey());

  void _scrollToSection(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Scrollable.ensureVisible(
      _keys[index].currentContext!,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: !ResponsiveLayout.isDesktop(context)
          ? Drawer(
              child: SideNavigation(
                selectedIndex: _selectedIndex,
                onDestinationSelected: (index) {
                  Navigator.pop(context);
                  _scrollToSection(index);
                },
              ),
            )
          : null,
      appBar: !ResponsiveLayout.isDesktop(context)
          ? AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const Text('PORTFOLIO'),
              centerTitle: true,
            )
          : null,
      body: Row(
        children: [
          if (ResponsiveLayout.isDesktop(context))
            SideNavigation(
              selectedIndex: _selectedIndex,
              onDestinationSelected: _scrollToSection,
            ),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  HeaderSection(key: _keys[0]),
                  AboutSection(key: _keys[1]),
                  ProjectsGrid(key: _keys[2]),
                  SkillsSection(key: _keys[3]),
                  ContactSection(key: _keys[4]),
                  const Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      width: double.infinity,
      color: Colors.black26,
      child: Column(
        children: [
          Text(
            '© 2026 ${AppData.name}. Built with Flutter.',
            style: const TextStyle(color: Colors.white54),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => UrlHelper.launchURL(AppData.github),
                icon: const FaIcon(
                  FontAwesomeIcons.github,
                  size: 20,
                  color: Colors.white54,
                ),
                tooltip: 'GitHub',
              ),
              IconButton(
                onPressed: () => UrlHelper.launchURL(AppData.linkedin),
                icon: const FaIcon(
                  FontAwesomeIcons.linkedin,
                  size: 20,
                  color: Colors.white54,
                ),
                tooltip: 'LinkedIn',
              ),
              IconButton(
                onPressed: () => UrlHelper.launchURL(AppData.twitter),
                icon: const FaIcon(
                  FontAwesomeIcons.twitter,
                  size: 20,
                  color: Colors.white54,
                ),
                tooltip: 'Twitter',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
