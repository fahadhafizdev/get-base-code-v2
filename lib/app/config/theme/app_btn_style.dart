import 'package:flutter/material.dart';
import 'app_color.dart';

class AppButtonStyle {
  static ButtonStyle btnDefault = ElevatedButton.styleFrom(
    backgroundColor: AppColor.mainColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
  );

  static ButtonStyle btnDefault2 = ElevatedButton.styleFrom(
    backgroundColor: AppColor.blue1,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(6),
      ),
    ),
  );

  static ButtonStyle btnDisable = ElevatedButton.styleFrom(
    backgroundColor: AppColor.grey3,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
  );

  static ButtonStyle btnBlack = ElevatedButton.styleFrom(
    backgroundColor: AppColor.black1,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
  );

  static ButtonStyle btnNegative = ElevatedButton.styleFrom(
    backgroundColor: AppColor.red2,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
  );

  static ButtonStyle btnStyle1 = ElevatedButton.styleFrom(
    backgroundColor: AppColor.white1,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
  );

  static ButtonStyle btnStyle2 = ElevatedButton.styleFrom(
    backgroundColor: AppColor.white1,
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      side: BorderSide(color: AppColor.mainColor),
    ),
  );

  static ButtonStyle btnOutlineGrey = ElevatedButton.styleFrom(
    backgroundColor: AppColor.white1,
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      side: BorderSide(color: AppColor.grey1),
    ),
  );

  static ButtonStyle btnOutlineMain = ElevatedButton.styleFrom(
    backgroundColor: AppColor.white1,
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      side: BorderSide(color: AppColor.mainColor),
    ),
  );
  static ButtonStyle btnOutlineNegative = ElevatedButton.styleFrom(
    backgroundColor: AppColor.white1,
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      side: BorderSide(color: AppColor.red2),
    ),
  );
}
