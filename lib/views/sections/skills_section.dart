import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants/app_colors.dart';
import '../../widgets/responsive_layout.dart';
import '../../constants/app_data.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Skills',
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
                  ? 4
                  : (ResponsiveLayout.isTablet(context) ? 3 : 2),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 1,
            ),
            itemCount: AppData.skills.length,
            itemBuilder: (context, index) {
              final skill = AppData.skills[index];
              return _SkillCard(
                name: skill['name'],
                icon: skill['icon'],
                color: skill['color'],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _SkillCard extends StatefulWidget {
  final String name;
  final IconData icon;
  final Color color;

  const _SkillCard({
    required this.name,
    required this.icon,
    required this.color,
  });

  @override
  State<_SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<_SkillCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: _isHovered
              ? AppColors.primary.withOpacity(0.15)
              : AppColors.cardBg,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            if (_isHovered)
              BoxShadow(
                color: AppColors.primary.withOpacity(0.2),
                blurRadius: 15,
                spreadRadius: 2,
              ),
          ],
          border: Border.all(
            color: _isHovered ? AppColors.primary : Colors.white10,
            width: 1.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              widget.icon,
              size: 40,
              color: _isHovered
                  ? AppColors.primary
                  : widget.color.withOpacity(0.8),
            ),
            const SizedBox(height: 16),
            Text(
              widget.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: _isHovered ? AppColors.textHeading : AppColors.textBody,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
