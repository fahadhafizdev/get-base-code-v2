import 'package:flutter/material.dart';

class UtilCloseKey {
  void close() => FocusManager.instance.primaryFocus?.unfocus();
}
