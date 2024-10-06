import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_task/screens/home/widgets/app_bar_taps.dart';
import 'package:flutter_web_task/screens/home/widgets/app_main_button.dart';
import 'package:flutter_web_task/screens/home/widgets/cart_item.dart';
import 'package:flutter_web_task/utilities/app_size_boxes.dart';
import 'package:flutter_web_task/utilities/color_manager.dart';
import 'package:flutter_web_task/utilities/image_manager.dart';
import 'package:flutter_web_task/utilities/styles_manager.dart';

import '../../model/dummy_data.dart';
import 'widgets/vertical_divider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double currentWidth = constraints.constrainWidth();
        print(currentWidth);
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 20.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppImages.logo,
                      ),
                      Spacer(),
                      if (currentWidth > 650) AppBarTaps(),
                      if (currentWidth > 650) const VerticalDividerWidget(),
                      Image.asset(
                        AppImages.setting,
                      ),
                      24.widthBox,
                      Image.asset(
                        AppImages.notification,
                      ),
                      const VerticalDividerWidget(),
                      Row(
                        children: [
                          Image.asset(
                            AppImages.person1,
                          ),
                          if (currentWidth > 650) 12.widthBox,
                          if (currentWidth > 650)
                            Text(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              'John Doe',
                              style: getRegularStyle(),
                            ),
                          if (currentWidth > 650) 4.widthBox,
                          if (currentWidth > 650)
                            const Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Colors.white,
                            ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.5,
                    color: AppColors.appGreyColor,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Items',
                          style: getRegularStyle(
                              fontSize: currentWidth > 650 ? 32 : 24),
                        ),
                      ),
                      Image.asset(
                        AppImages.filter,
                        height: 40,
                        width: 40,
                      ),
                      if (currentWidth > 650) const VerticalDividerWidget(),
                      if (currentWidth > 650)
                        AppMainButton(
                          image: Icons.add,
                          translation: 'Add a New Item',
                          style: getMediumStyle(fontSize: 14),
                          color: AppColors.primaryColor,
                        )
                    ],
                  ),
                  18.heightBox,
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: currentWidth > 1450
                          ? 5
                          : currentWidth > 1150
                              ? 4
                              : currentWidth > 850
                                  ? 3
                                  : currentWidth > 650
                                      ? 2
                                      : 1, // Number of items per row
                      childAspectRatio: 1.0, // Adjust item height/width ratio
                      crossAxisSpacing: 8.0, // Spacing between columns
                      mainAxisSpacing: 8.0, // Spacing between rows
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return CartItem(itemModel: items[index]);
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
