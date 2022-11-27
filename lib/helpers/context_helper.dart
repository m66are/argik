import 'package:flutter/material.dart';

extension ContextHelper on BuildContext {
  TextTheme get tStyle {
    return Theme.of(this).textTheme;
  }

  ThemeData get theme {
    return Theme.of(this);
  }

  NavigatorState get nav {
    return Navigator.of(this);
  }
}
