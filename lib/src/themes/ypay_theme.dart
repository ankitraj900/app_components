import 'package:flutter/material.dart';

class YPAYTheme {
  static ThemeData get theme {
    const primaryColor = Color(0xFF40004D);
    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        primary: primaryColor,
        secondary: Color(0xFF40004D),
        background: Colors.white,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFFB39EB5)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFFB39EB5)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: primaryColor, width: 2),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        prefixIconColor: primaryColor,
        suffixIconColor: primaryColor,
        labelStyle: TextStyle(color: primaryColor, fontWeight: FontWeight.w500),
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
        bodyLarge: TextStyle(color: Color(0xFF40004D), fontSize: 18),
        bodyMedium: TextStyle(color: Color(0xFF333333)),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(primaryColor),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
      ),
    );
  }
} 