import 'package:argik/views/HomeView/HomeView.dart';
import 'package:argik/views/LoginView/LoginView.dart';
import 'package:argik/views/SignUpView/SignUpView.dart';
import 'package:argik/views/VegView/VegView.dart';
import 'package:argik/views/Wrapper.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

const String kWrapper = "/";
const String kHomeRoute = "/home";
const String kLoginRoute = "/login";
const String kSignUpRoute = "/signUp";
const String kVegRoute = "/veg";

Map<String, Widget Function(BuildContext)> mainRoutes = {
  kWrapper: (context) => const Wrapper(),
  kHomeRoute: (context) => const HomeView(),
  kLoginRoute: (context) => const LoginView(),
  kSignUpRoute: (context) => const SignUpView(),
  kVegRoute: (context) => const VegView(),
};
