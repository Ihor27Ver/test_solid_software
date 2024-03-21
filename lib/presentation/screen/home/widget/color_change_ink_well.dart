import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A custom stateless widget that creates an InkWell with responsive sizing.
///
/// This widget is designed to fill the screen and respond to tap events,
/// triggering a callback function. It centralizes a text display
/// and allows for the color of the text to be dynamically set.
///
/// Parameters:
///   [textColor] - The color of the text displayed
///   in the center of the InkWell.
///   [onTap] - A callback function that is executed when the InkWell is tapped.
class ColorChangeInkWell extends StatelessWidget {
  /// The color of the text to be displayed.
  final Color textColor;

  /// The callback function to be called when the InkWell is tapped.
  final VoidCallback onTap;

  /// Constructs a [ColorChangeInkWell].

  const ColorChangeInkWell({
    required this.textColor,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 1.sw,
        height: 1.sh,
        child: Center(
          child: Text(
            'Hello there',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
