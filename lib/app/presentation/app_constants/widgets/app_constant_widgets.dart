import 'package:flutter/material.dart';

class AppConstantWidgets {
  static Widget emptyWidget = const SizedBox();
  static Widget heightOrWidthWidget({double height, double width}) =>
      SizedBox(height: height, width: width);
}
