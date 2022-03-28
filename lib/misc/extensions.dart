import 'package:flutter/material.dart';

/// an extension for [BuildContext].
extension ContextExtension on BuildContext {
  /// the screen's width.
  double get width => MediaQuery.of(this).size.width;

  /// the screen's height.
  double get height => MediaQuery.of(this).size.height;

  /// multiplies the [val] with the screen's width.
  double multiplyWidth(double val) => width * val;

  /// multiplies the [val] with the screen's height.
  double multiplyHeight(double val) => height * val;
}
