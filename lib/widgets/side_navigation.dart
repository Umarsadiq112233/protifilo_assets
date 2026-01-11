import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/app_colors.dart';
import '../constants/app_data.dart';
import '../utils/url_helper.dart';

class SideNavigation extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onDestinationSelected;

  const SideNavigation({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: const BoxDecoration(
        color: AppColors.cardBg,
        border: Border(right: BorderSide(color: Colors.white12, width: 1)),
      ),
      child: Column(
        children: [
          const SizedBox(height: 40),
          _buildLogo(),
          const SizedBox(height: 40),
          _buildNavItem(0, Icons.home_rounded, 'Home'),
          _buildNavItem(1, Icons.person_rounded, 'About'),
          _buildNavItem(2, Icons.work_rounded, 'Projects'),
          _buildNavItem(3, Icons.bolt_rounded, 'Skills'),
          _buildNavItem(4, Icons.email_rounded, 'Contact'),
          const Spacer(),
          _buildSocialIcons(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primary, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Text(
        'Portfolio',
        style: TextStyle(
          color: AppColors.primary,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    final isSelected = selectedIndex == index;
    return InkWell(
      onTap: () => onDestinationSelected(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: isSelected ? AppColors.primary : Colors.transparent,
              width: 4,
            ),
          ),
          color: isSelected
              ? AppColors.primary.withOpacity(0.1)
              : Colors.transparent,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? AppColors.primary : AppColors.textBody,
              size: 24,
            ),
            const SizedBox(width: 16),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? AppColors.textHeading : AppColors.textBody,
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialIcon(FontAwesomeIcons.github, AppData.github, 'GitHub'),
        const SizedBox(width: 12),
        _socialIcon(FontAwesomeIcons.linkedin, AppData.linkedin, 'LinkedIn'),
        const SizedBox(width: 12),
        _socialIcon(FontAwesomeIcons.twitter, AppData.twitter, 'Twitter'),
      ],
    );
  }

  Widget _socialIcon(IconData icon, String url, String tooltip) {
    return Tooltip(
      message: tooltip,
      child: InkWell(
        onTap: () => UrlHelper.launchURL(url),
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            shape: BoxShape.circle,
          ),
          child: FaIcon(icon, color: AppColors.textBody, size: 20),
        ),
      ),
    );
  }
}
