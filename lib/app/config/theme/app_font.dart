import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_color.dart';

class AppFont {
  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight bold = FontWeight.w700;
  static FontWeight extraBold = FontWeight.w800;

  static TextStyle interGreen1 = GoogleFonts.inter(
    color: AppColor.green1,
    fontSize: 14.sp,
  );

  static TextStyle interBlack1 = GoogleFonts.inter(
    color: AppColor.black1,
    fontSize: 14.sp,
  );

  static TextStyle interBlue1 = GoogleFonts.inter(
    color: AppColor.blue1,
    fontSize: 14.sp,
  );

  static TextStyle interBlue2 = GoogleFonts.inter(
    color: AppColor.blue2,
    fontSize: 14.sp,
  );

  static TextStyle interBlack3 = GoogleFonts.inter(
    color: AppColor.black3,
    fontSize: 14.sp,
  );
  static TextStyle interGrey1 = GoogleFonts.inter(
    color: AppColor.grey1,
    fontSize: 14.sp,
  );

  static TextStyle interGrey3 = GoogleFonts.inter(
    color: AppColor.grey3,
    fontSize: 14.sp,
  );

  static TextStyle interWhite1 = GoogleFonts.inter(
    color: AppColor.white1,
    fontSize: 14.sp,
  );

  static TextStyle poppinsWhite1 = GoogleFonts.poppins(
    color: AppColor.white1,
    fontSize: 14.sp,
  );

  static TextStyle poppinsBlack1 = GoogleFonts.poppins(
    color: AppColor.black1,
    fontSize: 14.sp,
  );
  static TextStyle poppinsGrey1 = GoogleFonts.poppins(
    color: AppColor.grey1,
    fontSize: 14.sp,
  );

  static TextStyle lexendBlack1 = GoogleFonts.lexend(
    color: AppColor.black1,
    fontSize: 14.sp,
  );

  static TextStyle exoBlack1 = GoogleFonts.exo(
    color: AppColor.black1,
    fontSize: 14.sp,
  );

  static TextStyle interOrange1 = GoogleFonts.inter(
    color: AppColor.orange1,
    fontSize: 14.sp,
    fontWeight: semiBold,
  );

  static TextStyle quickSandBlack1 = GoogleFonts.quicksand(
    color: AppColor.black1,
    fontSize: 14.sp,
  );
}
