import 'package:flutter/material.dart';
import 'package:get_base_code_v2/app/config/config.dart';

class CustomStatusPacket extends StatelessWidget {
  final String status;
  const CustomStatusPacket({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppColor.green1.withOpacity(0.1),
        border: Border.all(color: AppColor.green1),
      ),
      child: Text(
        status.replaceAll('_', ' ').toTitleCase(),
        style: AppFont.interBlue1.copyWith(
          fontWeight: AppFont.bold,
          fontSize: 11,
          color: AppColor.green1,
        ),
      ),
    );
  }
}
