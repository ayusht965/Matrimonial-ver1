import 'package:flutter/material.dart';

abstract class AppTheme {
  static const Color primary = Color(0xFFA41C20);
  static const Color splash = Color(0xffFCEEED);
  static const Color secondary = Color(0xffffffff);

  static ButtonStyle primaryButton = ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(AppTheme.secondary),
    backgroundColor: MaterialStateProperty.all<Color>(AppTheme.primary),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
    ),
  );

  static ButtonStyle secondaryButton = ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(AppTheme.primary),
    backgroundColor: MaterialStateProperty.all<Color>(AppTheme.secondary),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0))),
    side: MaterialStateProperty.all<BorderSide>(
        const BorderSide(color: AppTheme.primary, width: 0.5)),
  );
}
