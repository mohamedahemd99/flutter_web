import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_task/utilities/app_size_boxes.dart';
import 'package:flutter_web_task/utilities/color_manager.dart';
import 'package:flutter_web_task/utilities/styles_manager.dart';

class AppBarTaps extends StatefulWidget {
  @override
  _AppBarTapsState createState() => _AppBarTapsState();
}

class _AppBarTapsState extends State<AppBarTaps> {
  // Track the selected index
  int _selectedIndex = 0;

  // List of tab labels
  final List<String> tabs = ["Items", "Pricing", "Info", "Tasks", "Analytics"];

  // Handle tap on a tab
  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(tabs.length, (index) {
        bool isSelected = _selectedIndex == index;
        return Padding(
          padding: EdgeInsets.only(right: 32.w),
          child: GestureDetector(
            onTap: () => _onTabTapped(index),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                FittedBox(
                  child: Text(tabs[index],
                      style: getRegularStyle(
                        color:
                            isSelected ? Colors.white : AppColors.appGreyColor,
                      )),
                ),
                25.heightBox,
                if (isSelected)
                  Container(
                    height: 2,
                    width: 40,
                    color: AppColors.primaryColor,
                  ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
