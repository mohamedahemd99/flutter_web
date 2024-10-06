import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilities/color_manager.dart';
import '../../../utilities/image_manager.dart';
import '../../../utilities/styles_manager.dart';

class OverlappingAvatars extends StatelessWidget {
  const OverlappingAvatars({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildAvatar(AppImages.person1),
        Transform.translate(
          offset: Offset(-15.w, 0), // Adjust this for overlap
          child: _buildAvatar(AppImages.person2),
        ),
        Transform.translate(
          offset: Offset(-30.w, 0), // Adjust this for overlap
          child: _buildAvatar(AppImages.person3),
        ),
        Transform.translate(
          offset: Offset(-45.w, 0), // Adjust this for overlap
          child: _countPersons('+6'),
        ),
      ],
    );
  }

  Widget _buildAvatar(String imagePath) {
    return ClipOval(
      child: Image.asset(
        imagePath,
        width: 24, // Adjust width for avatar size
        height: 24, // Adjust height for avatar size
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _countPersons(String count) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.dividerColor,
          borderRadius: BorderRadius.circular(100.r)),
      padding: EdgeInsets.all(6.5),
      child: Text(
        count,
        style: getMediumStyle(fontSize: 8.4, color: AppColors.primaryColor),
      ),
    );
  }
}
