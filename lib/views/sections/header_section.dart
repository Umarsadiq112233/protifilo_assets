import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../widgets/responsive_layout.dart';
import '../../constants/app_data.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveLayout.isDesktop(context) ? 40 : 20,
        vertical: 80,
      ),
      child: ResponsiveLayout(
        mobile: _buildMobileHeader(context),
        desktop: _buildDesktopHeader(context),
      ),
    );
  }

  Widget _buildDesktopHeader(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: _buildHeaderText(context)),
        const Expanded(flex: 2, child: _ProfileImage()),
      ],
    );
  }

  Widget _buildMobileHeader(BuildContext context) {
    return Column(
      children: [
        const _ProfileImage(),
        const SizedBox(height: 40),
        _buildHeaderText(context),
      ],
    );
  }

  Widget _buildHeaderText(BuildContext context) {
    return Column(
      crossAxisAlignment: ResponsiveLayout.isDesktop(context)
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            'Welcome to my portfolio',
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 24),
        Text(
          AppData.name,
          style: Theme.of(context).textTheme.displayLarge,
          textAlign: ResponsiveLayout.isDesktop(context)
              ? TextAlign.start
              : TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          AppData.title,
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
            color: AppColors.cyanAccent,
            fontSize: 24,
          ),
          textAlign: ResponsiveLayout.isDesktop(context)
              ? TextAlign.start
              : TextAlign.center,
        ),
        const SizedBox(height: 24),
        Text(
          AppData.bio1,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: ResponsiveLayout.isDesktop(context)
              ? TextAlign.start
              : TextAlign.center,
        ),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: ResponsiveLayout.isDesktop(context)
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('View My Work')),
            const SizedBox(width: 20),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: AppColors.textHeading,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
              child: const Text('Contact Me'),
            ),
          ],
        ),
      ],
    );
  }
}

class _ProfileImage extends StatelessWidget {
  const _ProfileImage();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.primary.withOpacity(0.3),
            width: 2,
          ),
        ),
        child: Container(
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                'https://avatars.githubusercontent.com/u/169636745?v=4',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
