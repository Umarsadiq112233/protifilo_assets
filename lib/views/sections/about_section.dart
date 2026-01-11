import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../widgets/responsive_layout.dart';
import '../../constants/app_data.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About Me',
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
          ResponsiveLayout(
            mobile: Column(
              children: [
                _buildBio(context),
                const SizedBox(height: 40),
                _buildExperience(context),
              ],
            ),
            desktop: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _buildBio(context)),
                const SizedBox(width: 60),
                Expanded(child: _buildExperience(context)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBio(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Who am I?',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 20),
        Text(AppData.bio1, style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: 20),
        Text(AppData.bio2, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }

  Widget _buildExperience(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Experience Summary',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 20),
        ...AppData.experience.map(
          (exp) =>
              _experienceItem(exp['title']!, exp['company']!, exp['period']!),
        ),
      ],
    );
  }

  Widget _experienceItem(String title, String company, String period) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 6),
            width: 12,
            height: 12,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textHeading,
                  ),
                ),
                Text(
                  company,
                  style: const TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  period,
                  style: const TextStyle(
                    color: AppColors.textBody,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
