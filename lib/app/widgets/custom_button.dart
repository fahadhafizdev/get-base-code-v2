import 'package:flutter/material.dart';
import 'package:get_base_code_v2/app/config/config.dart';

class CustomButton extends StatelessWidget {
  final bool isLoading;
  final Function() func;
  final String text;
  final ButtonStyle btnStyle;
  final Color textColor;
  final FontWeight? fontWeight;
  final Widget? prefix;
  final Widget? suffix;
  final EdgeInsets margin;
  final double fontSize;

  const CustomButton({
    super.key,
    required this.isLoading,
    required this.func,
    required this.text,
    required this.btnStyle,
    this.fontSize = 0,
    this.prefix,
    this.suffix,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.w700,
    this.margin = const EdgeInsets.all(0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 48.h,
      width: AppDimen.wInfinit,
      child: ElevatedButton(
        style: btnStyle,
        onPressed: func,
        child: isLoading
            ? SizedBox(
                height: 20.h,
                width: 20.h,
                child: CircularProgressIndicator(
                  color: textColor,
                  strokeWidth: 3.0,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  prefix ?? 0.0.height,
                  prefix == null ? 0.0.height : 12.0.width,
                  Text(
                    text,
                    style: AppFont.interWhite1.copyWith(
                      fontWeight: fontWeight,
                      color: textColor,
                      fontSize: fontSize == 0 ? 14.sp : fontSize,
                    ),
                  ),
                  suffix ?? 0.0.height,
                  suffix == null ? 0.0.height : 12.0.width,
                ],
              ),
      ),
    );
  }
}
