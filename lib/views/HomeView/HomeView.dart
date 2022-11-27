import 'package:argik/constants/colors.dart';
import 'package:argik/controllers/AuthController.dart';
import 'package:argik/controllers/DataController.dart';
import 'package:argik/helpers/context_helper.dart';
import 'package:argik/routes/routes.dart';
import 'package:argik/views/HomeView/components/SinglePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  AuthController authController = Get.find<AuthController>();
  DataController dataController = Get.find<DataController>();

  PageController pageController = PageController();
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Agrik"),
          actions: [
            IconButton(
                onPressed: () async {
                  await authController.signOut();
                  context.nav.pushReplacementNamed(kWrapper);
                },
                color: Colors.white,
                icon: const Icon(Icons.logout))
          ],
        ),
        body: Obx(() {
          if (dataController.vegs.isNotEmpty) {
            return PageView(
                children: List.generate(dataController.vegs.length,
                    (index) => SinglePage(veg: dataController.vegs[index])));
          } else {
            return Container(
              alignment: Alignment.center,
              child: const CircularProgressIndicator(color: cGreen),
            );
          }
        }));
  }
}
