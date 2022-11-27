import 'package:argik/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyThemes {
  static ThemeData get lightTheme {
    return ThemeData(
      //---------------------------------------------------- COLORS ------------------------------------------------------------------------//
      //---------------------------------------------------- COLORS ------------------------------------------------------------------------//
      primaryColor: Colors.white,

      primaryColorLight: cGreen,

      indicatorColor: cGreen,
      brightness: Brightness.light,

      dividerColor: Colors.grey.withOpacity(0.8),
      colorScheme:
          const ColorScheme.light().copyWith(secondary: Colors.grey[850]),

      //---------------------------------------------------- WIGGETS ------------------------------------------------------------------------//
      //---------------------------------------------------- WIGGETS ------------------------------------------------------------------------//
      scaffoldBackgroundColor: Colors.grey.shade100,
      inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          isDense: false,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none),
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Colors.red, width: 0.5)),
          filled: true,
          fillColor: Colors.white),
      appBarTheme: AppBarTheme(
          backgroundColor: cGreen,
          titleTextStyle: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              fontSize: 15.sp,
              color: Colors.white),
          elevation: 0.2,
          centerTitle: true,
          titleSpacing: 16,
          iconTheme: const IconThemeData(color: Colors.white),
          actionsIconTheme: const IconThemeData(color: Colors.black)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: cBrown, elevation: 1.0),
      bottomAppBarTheme: const BottomAppBarTheme(color: cBrown, elevation: 1.0),
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: Colors.white),
      buttonTheme: const ButtonThemeData(
          shape: CircleBorder(), padding: EdgeInsets.all(8)),
      dialogTheme: DialogTheme(
          titleTextStyle: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              color: Colors.black),
          contentTextStyle: TextStyle(
              fontFamily: "Nunito",
              fontWeight: FontWeight.w600,
              fontSize: 13.sp,
              color: Colors.black),
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: cBrown,
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 12),
        textStyle: TextStyle(
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
          color: Colors.black,
        ),
      )),
      iconTheme: IconThemeData(color: Colors.grey[850]),
      cardTheme: CardTheme(
          elevation: 0.5,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      chipTheme: ChipThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: Colors.grey.shade300,
        showCheckmark: false,
        disabledColor: Colors.grey,
        selectedColor: Colors.white,
        padding: const EdgeInsets.all(12),
        labelStyle: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
            color: Colors.black),
        brightness: Brightness.light,
        secondarySelectedColor: cBrown,
        secondaryLabelStyle: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
            color: Colors.white),
      ),

      //---------------------------------------------------- TYPOGRAPHY ------------------------------------------------------------------------//
      //---------------------------------------------------- Typography ------------------------------------------------------------------------//
      textTheme: TextTheme(
        headline1: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w800,
            fontSize: 20.sp,
            color: Colors.black),
        headline2: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
            color: Colors.black),
        headline3: TextStyle(
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
          color: Colors.black,
        ),
        bodyText1: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
            color: Colors.black),
        bodyText2: TextStyle(
            fontFamily: "Nunito",
            fontWeight: FontWeight.w500,
            fontSize: 11.sp,
            color: Colors.black),
        subtitle1: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: "Nunito",
            fontSize: 10.sp,
            color: Colors.black.withOpacity(0.8)),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      //---------------------------------------------------- COLORS ------------------------------------------------------------------------//
      //---------------------------------------------------- COLORS ------------------------------------------------------------------------//
      scaffoldBackgroundColor: const Color(0xFF212121),
      canvasColor: Colors.grey.shade900,
      iconTheme: const IconThemeData(color: Colors.white),
      primaryColor: Colors.black,
      dividerColor: Colors.grey.withOpacity(0.8),
      brightness: Brightness.dark,
      primaryIconTheme: const IconThemeData(color: Colors.white),

      primaryColorLight: cGreen,

      indicatorColor: cGreen,

      //---------------------------------------------------- WIGGETS ------------------------------------------------------------------------//
      //---------------------------------------------------- WIGGETS ------------------------------------------------------------------------//

      appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              color: Colors.white),
          elevation: 0.2,
          centerTitle: true,
          titleSpacing: 16,
          iconTheme: const IconThemeData(color: Colors.white),
          actionsIconTheme: const IconThemeData(color: Colors.white)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: cBrown, elevation: 1.0),
      bottomAppBarTheme: const BottomAppBarTheme(color: cBrown, elevation: 1.0),

      buttonTheme: const ButtonThemeData(
          shape: CircleBorder(), padding: EdgeInsets.all(8)),
      dialogTheme: DialogTheme(
          titleTextStyle: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              color: Colors.white),
          contentTextStyle: TextStyle(
              fontFamily: "Nunito",
              fontWeight: FontWeight.w600,
              fontSize: 13.sp,
              color: Colors.white),
          backgroundColor: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: cBrown,
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 12),
        textStyle: TextStyle(
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
          color: Colors.black,
        ),
      )),
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: Colors.black),
      cardTheme: CardTheme(
          elevation: 0.5,
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      chipTheme: ChipThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: Colors.grey.shade800,
        showCheckmark: false,
        disabledColor: Colors.grey,
        selectedColor: cBrown,
        padding: const EdgeInsets.all(12),
        labelStyle: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
            color: Colors.white),
        brightness: Brightness.dark,
        secondarySelectedColor: cBrown,
        secondaryLabelStyle: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
            color: Colors.black),
      ),

      //---------------------------------------------------- TYPOGRAPHY ------------------------------------------------------------------------//
      //---------------------------------------------------- Typography ------------------------------------------------------------------------//
      textTheme: TextTheme(
        headline1: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w800,
            fontSize: 20.sp,
            color: Colors.white),
        headline2: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
            color: Colors.white),
        headline3: TextStyle(
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
          color: Colors.white,
        ),
        bodyText1: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            color: Colors.white),
        bodyText2: TextStyle(
            fontFamily: "Nunito",
            fontWeight: FontWeight.w400,
            fontSize: 13.sp,
            color: Colors.white),
        subtitle1: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: "Nunito",
            fontSize: 10.sp,
            color: Colors.white.withOpacity(0.8)),
      ),
      colorScheme: const ColorScheme.dark().copyWith(
          secondary: Colors.white, background: const Color(0xFF212121)),
    );
  }
}
