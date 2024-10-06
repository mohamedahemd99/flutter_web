import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_task/screens/home/widgets/app_main_button.dart';
import 'package:flutter_web_task/utilities/app_size_boxes.dart';
import 'package:flutter_web_task/utilities/color_manager.dart';
import 'package:flutter_web_task/utilities/image_manager.dart';
import 'package:flutter_web_task/utilities/styles_manager.dart';

import '../../../model/dummy_data.dart';
import 'oval_avatar_widget.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.itemModel});

  final Item itemModel;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Card(
            // margin: EdgeInsets.only(right: 16.w, bottom: 20.h),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r)),
            color: AppColors.cardBackgroundColor,
            child: SizedBox(
              width: 342.w,
              height: 322.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15.r)),
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              // Main Image
                              Image.asset(
                                fit: BoxFit.cover,
                                itemModel.image,
                                width: double.infinity,
                              ),
                              // Positioned Shadow
                              Positioned(
                                bottom: 0,
                                left: 0, // Ensure the shadow spans the width
                                right: 0,
                                child: Container(
                                  height: 100.h, // Shadow height (up to 100px)
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                        AppColors.cardBackgroundColor
                                            .withOpacity(0.9),
                                        // Shadow color (more opacity)

                                        Colors.transparent,
                                        // Fades to transparent
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 12.h,
                                  right: 16.h,
                                  child: Image.asset(AppImages.menu)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppMainButton(
                            icon: Icons.keyboard_arrow_down_rounded,
                            padding: EdgeInsets.all(8),
                            border: BorderRadius.circular(100),
                            color: Colors.transparent,
                            borderColor: AppColors.borderColor,
                            translation: itemModel.status,
                            style: getMediumStyle(fontSize: 14),
                          ),
                          16.heightBox,
                          Expanded(
                            child: AutoSizeText(
                              itemModel.title,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: getRegularStyle(fontSize: 18),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                fit: BoxFit.cover,
                                AppImages.calendar,
                                width: 12,
                                height: 12,
                              ),
                              5.widthBox,
                              Expanded(
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  itemModel.date,
                                  style: getRegularStyle(
                                      fontSize: 12,
                                      color: AppColors.appGreyColor),
                                ),
                              )
                            ],
                          ),
                          12.heightBox,
                          Divider(
                            color: AppColors.dividerColor,
                          ),
                          12.heightBox,
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const FittedBox(child: OverlappingAvatars()),
                                Text(
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  itemModel.taskReminder,
                                  style: getRegularStyle(
                                      fontSize: 12,
                                      color: AppColors.appGreyColor),
                                )
                              ],
                            ),
                          ),
                          10.heightBox,
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
      },
    );
  }
}
