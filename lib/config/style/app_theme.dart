import 'package:flutter/material.dart';

class MyAppTheme {
  // Define colors
  static const Color primaryColor = Color(0xFFFEBF00);
  static const Color secondaryColor = Color(0xFF03DAC6);
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static Color greenColor = Colors.green;

//
  static const Color errorColor = Color(0xffff6769);
  static const Color onBackgroundColor = Color(0xff484848);
  static const Color onPrimaryColor = Color(0xff3bcc97);
  static const Color onSecondaryColor = Color(0xff57cc99);

//shimmer loading colors
  final Color shimmerBaseColor = Colors.grey.shade300;
  final Color shimmerhighlightColor = Colors.grey.shade100;
  final Color shimmerContentColor = Colors.white.withOpacity(0.85);

//colors used for status and some other places (change to globally apply personalized color)

  final Color redColor = Colors.red;
  final Color orangeColor = Colors.orange;
  final Color blueColor = Colors.blue;

  // static Color gray =  Color(0xE2808080);
  // final red = const Color(0xFFF90404);
  // final background = const Color(0xFFFFF8F1);
  // final error = const Color(0xFFBA1A1A);
  // final errorContainer = const Color(0xFFFFDAD6);
  // final inverseOnSurface = const Color(0xFFF9EFE2);
  // final inversePrimary = const Color(0xFFE6C26C);
  // final inverseSurface = const Color(0xFF343027);
  // final onBackground = const Color(0xFF1F1B13);
  // final onError = Color(0xFFFFFFFF);
  // final onErrorContainer = Color(0xFF410002);
  // final onPrimary = Color(0xFFFFFFFF);
  // final onPrimaryContainer = Color(0xFF251A00);
  // final onPrimaryFixed = Color(0xFF251A00);
  // final onPrimaryFixedVariant = Color(0xFF5A4400);
  // final onSecondary = Color(0xFFFFFFFF);
  // final onSecondaryContainer = Color(0xFF231A04);
  // final onSecondaryFixed = Color(0xFF231A04);
  // final onSecondaryFixedVariant = Color(0xFF51452A);
  // final onSurface = Color(0xFF1F1B13);
  // final onSurfaceVariant = Color(0xFF4D4639);
  // final onTertiary = Color(0xFFFFFFFF);
  // final onTertiaryContainer = Color(0xFF06210A);
  // final onTertiaryFixed = Color(0xFF06210A);
  // final onTertiaryFixedVariant = Color(0xFF314D32);
  // final outline = Color(0xFF7E7667);
  // final outlineVariant = Color(0xFFD0C5B4);
  // final primary = Color(0xFF765B0B);
  // final primaryContainer = Color(0xFFFFDF97);
  // final primaryFixed = Color(0xFFFFDF97);
  // final primaryFixedDim = Color(0xFFE6C26C);
  // final scrim = const Color(0xFF000000);
  // final secondary = Color(0xFF6A5D3F);
  // final secondaryContainer = Color(0xFFF3E1BB);
  // final secondaryFixed = Color(0xFFF3E1BB);
  // final secondaryFixedDim = Color(0xFFD6C5A0);
  // final shadow = Color(0xFF000000);
  // final surface = Color(0xFFFFF8F1);
  // final surfaceBright = const Color(0xFFFFF8F1);
  // final surfaceContainer = Color(0xFFF6EDDF);
  // final surfaceContainerHigh = Color(0xFFF0E7D9);
  // final surfaceContainerHighest = Color(0xFFEAE1D4);
  // final surfaceContainerLow = Color(0xFFFCF2E5);
  // final surfaceContainerLowest = Color(0xFFFFFFFF);
  // final surfaceDim = Color(0xFFE2D9CC);
  // final surfaceTint = Color(0xFF765B0B);
  // final surfaceVariant = Color(0xFFECE1CF);
  // final tertiary = Color(0xFF496548);
  // final tertiaryContainer = Color(0xFFCAEBC6);
  // final tertiaryFixed = Color(0xFFCAEBC6);
  // final tertiaryFixedDim = Color(0xFFAFCFAB);

  // Define ThemeData
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    brightness: Brightness.light,
    hintColor: primaryColor,
    primarySwatch: Colors.blue,
    inputDecorationTheme: const InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,
          width: 2.0,
        ),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: MyAppTheme.primaryColor, // Color for the selected item
      unselectedItemColor: Colors.grey, // Color for unselected items
      showSelectedLabels: true, // Show labels for selected items
      showUnselectedLabels: true, // Show labels for unselected items
      backgroundColor:
          Colors.white, // Background color of the bottom navigation bar
    ),
    fontFamily: 'OpenSans',
  );

  // static final ThemeData darkTheme = ThemeData(
  //   primaryColor: Colors.grey[900],
  //   hintColor: Colors.blueAccent,
  //   brightness: Brightness.dark,
  //
  // );
}
