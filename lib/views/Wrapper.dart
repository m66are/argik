import 'package:argik/constants/colors.dart';
import 'package:argik/controllers/AuthController.dart';
import 'package:argik/helpers/context_helper.dart';
import 'package:argik/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  AuthController authController = Get.find<AuthController>();

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _handleRouting();
    });

    super.initState();
  }

  void _handleRouting() {
    if (authController.user.value != null) {
      // user logged in already //

      context.nav.pushReplacementNamed(kHomeRoute);
    } else {
      context.nav.pushReplacementNamed(kLoginRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const CircularProgressIndicator(
          color: cGreen,
        ),
      ),
    );
  }
}
