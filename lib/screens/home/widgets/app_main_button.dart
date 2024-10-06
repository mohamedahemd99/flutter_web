// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppMainButton extends StatelessWidget {
  AppMainButton({
    super.key,
    this.translation,
    this.color,
    this.onTap,
    this.fontSize = 15,
    this.imageSize = 25,
    this.image,
    this.icon,
    this.fontWeight = FontWeight.normal,
    this.fontFamily,
    this.textDecoration,
    this.border,
    this.padding,
    this.style,
    this.child,
    this.decoration,
    this.margin = 0.0,
    this.imageColor,
    this.elevation = 0.0,
    this.borderColor,
  });

  final String? translation;
  final double fontSize;
  final double imageSize;
  final double margin;
  final FontWeight fontWeight;
  final String? fontFamily;
  final IconData? image;
  final IconData? icon;
  final TextDecoration? textDecoration;
  final BoxDecoration? decoration;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  Color? color;
  Color? imageColor;
  final double elevation;
  Color? borderColor;
  TextStyle? style;
  GestureTapCallback? onTap;
  BorderRadiusGeometry? border;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding ?? EdgeInsets.symmetric(vertical: 13, horizontal: 16),
        decoration: decoration ??
            BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(100.r),
                border: Border.all(color: borderColor ?? color!)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (image != null) Icon(image!),
            if (image != null)
              SizedBox(
                width: 8,
              ),

            child ?? Text(translation!, maxLines: 1, style: style),
            if (icon != null)
              const SizedBox(
                width: 8,
              ),
            if (icon != null)
              Icon(
                icon!,
                color: Colors.white,
              ),

            //16.widthBox,
          ],
        ),
      ),
    );
  }
}
