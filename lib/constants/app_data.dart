import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/project.dart';

class AppData {
  // Personal Info
  static const String name = 'Umar sadiq';
  static const String title = 'Software Engineer & Flutter Developer';
  static const String welcomeMessage = 'Welcome to my portfolio';
  static const String bio1 =
      "I am a passionate Software Engineer with over 2 years of experience in building mobile and web applications. My specialty lies in Flutter development, creating seamless and high-performing user experiences.";
  static const String bio2 =
      "I love solving complex problems and turning ideas into reality through elegant code. When I'm not coding, you can find me exploring new technologies, contributing to open-source projects, or sharing my knowledge with the developer community.";

  // Contact Info
  static const String email = 'umarsadiq27041501@gmail.com';
  static const String phone = '+923348934034';
  static const String location = 'Islamabad, Pakistan';

  // Social Links
  static const String github = 'https://github.com/Umarsadiq112233';
  static const String linkedin =
      'https://www.linkedin.com/in/umar-sadiq-a48932311/';
  static const String twitter = 'https://twitter.com/johndoe';

  // EmailJS Configuration (Get these from https://www.emailjs.com/)
  static const String emailJsServiceId =
      'service_9xzwfme'; // Replace with your Service ID from EmailJS Dashboard
  static const String emailJsTemplateId = 'template_9i7o4sr';
  static const String emailJsPublicKey = 'au94azvypYDxS3_cb';

  // Experience
  static const List<Map<String, String>> experience = [
    {
      'title': 'Senior Flutter Developer',
      'company': 'Quant Aeonix',
      'period': '2026 - Present',
    },
    {
      'title': 'Mobile App Developer',
      'company': 'Hera',
      'period': '2025 - 2025',
    },
    {
      'title': 'Flutter Developer',
      'company': 'DeveloperHub (Remote)',
      'period': '2025 - 2025',
    },
  ];

  // Skills
  static const List<Map<String, dynamic>> skills = [
    {
      'name': 'Flutter',
      'icon': FontAwesomeIcons.flutter,
      'color': Color(0xFF02569B),
    },
    {'name': 'Dart', 'icon': FontAwesomeIcons.code, 'color': Color(0xFF00B4AB)},
    {
      'name': 'Firebase',
      'icon': FontAwesomeIcons.fire,
      'color': Color(0xFFFFCA28),
    },
    {
      'name': 'REST APIs',
      'icon': FontAwesomeIcons.cloud,
      'color': Color(0xFF4CAF50),
    },
    {
      'name': 'Git & GitHub',
      'icon': FontAwesomeIcons.github,
      'color': Color(0xFFF05032),
    },
    {
      'name': 'UI/UX',
      'icon': FontAwesomeIcons.paintBrush,
      'color': Color(0xFFFF5722),
    },
    {
      'name': 'Node.js',
      'icon': FontAwesomeIcons.nodeJs,
      'color': Color(0xFF339933),
    },
    {
      'name': 'MongoDB',
      'icon': FontAwesomeIcons.database,
      'color': Color(0xFF47A248),
    },
    {
      'name': 'Web Development',
      'icon': FontAwesomeIcons.globe,
      'color': Color(0xFF2196F3),
    },
    {
      'name': 'HTML',
      'icon': FontAwesomeIcons.html5,
      'color': Color(0xFFE34F26),
    },
    {
      'name': 'CSS',
      'icon': FontAwesomeIcons.css3Alt,
      'color': Color(0xFF1572B6),
    },
    {
      'name': 'JavaScript',
      'icon': FontAwesomeIcons.js,
      'color': Color(0xFFF7DF1E),
    },
  ];

  // Projects
  static final List<Project> projects = [
    const Project(
      title: 'Legal Ace',
      description:
          'A cross-platform study app for legal case reading, featuring real-time audio rooms, collaborative study groups, and premium subscriptions.',
      imageUrl:
          'https://raw.githubusercontent.com/Umarsadiq112233/protifilo_assets/main/Group%201.png',
      tags: ['Flutter', 'Real-time Audio', 'Subscriptions', 'Legal'],
    ),
    const Project(
      title: 'Campus Event Live',
      description:
          'An interactive student engagement platform for live campus events, featuring video creation, real-time voting, and a reward coin system.',
      imageUrl:
          'https://raw.githubusercontent.com/Umarsadiq112233/protifilo_assets/main/yollor.jpg',
      tags: ['Flutter', 'Real-time', 'Community', 'Engagement'],
    ),
    const Project(
      title: 'Hero-Me App',
      description:
          'A gamified productivity app where users connect, assign tasks collaboratively, and track progress through missions and leagues to stay motivated.',
      imageUrl:
          'https://raw.githubusercontent.com/Umarsadiq112233/protifilo_assets/main/Group%202%20(1).png',
      tags: ['Flutter', 'Firebase', 'Gamification', 'Productivity'],
    ),
    const Project(
      title: 'Jumpeezzz',
      description:
          'Smart Jump Rope Tracker that connects to IoT devices via BLE (Bluetooth Low Energy) for real-time exercise tracking.',
      imageUrl:
          'https://images.unsplash.com/photo-1517836357463-d25dfeac3438?q=80&w=1000',
      link: 'https://github.com/Umarsadiq112233/jumpeezz',
      tags: ['Flutter', 'BLE', 'IoT', 'Fitness'],
    ),
    const Project(
      title: 'Study Connect',
      description:
          'A student connectivity platform utilizing Firebase for real-time data, authentication, and social features.',
      imageUrl:
          'https://images.unsplash.com/photo-1522202176988-66273c2fd55f?q=80&w=1000',
      link: 'https://github.com/Umarsadiq112233/studty_connect',
      tags: ['Flutter', 'Firebase', 'Social Networking'],
    ),
    const Project(
      title: 'Career Coaching App',
      description:
          'A professional mobile application designed for career development, coaching, and skill building.',
      imageUrl:
          'https://raw.githubusercontent.com/Umarsadiq112233/protifilo_assets/main/career.PNG',
      link: 'https://github.com/Umarsadiq112233/career_coaching_app',
      tags: ['Flutter', 'Dart', 'UI/UX', 'Professional'],
    ),
    const Project(
      title: 'Todo List App',
      description:
          'A clean and functional task management application with local storage for high productivity.',
      imageUrl:
          'https://images.unsplash.com/photo-1484480974693-6ca0a78fb36b?q=80&w=1000',
      link: 'https://github.com/Umarsadiq112233/Todo_list_app',
      tags: ['Flutter', 'Local Storage', 'Task Management'],
    ),
  ];
}
