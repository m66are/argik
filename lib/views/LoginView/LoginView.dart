import 'package:argik/constants/colors.dart';
import 'package:argik/controllers/AuthController.dart';
import 'package:argik/helpers/context_helper.dart';
import 'package:argik/routes/routes.dart';
import 'package:argik/widgets/MainButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  AuthController authController = Get.find<AuthController>();
  final form = FormGroup(
    {
      'email': FormControl<String>(
          validators: [Validators.required, Validators.email]),
      'password': FormControl<String>(validators: [
        Validators.required,
        Validators.minLength(8),
      ]),
    },
  );
  @override
  Widget build(BuildContext context) {
    print(
        '🚨🚨🚨🚨🚨🚨🚨 ------ LoginView WIDGET BUILD METHOD CALLED ----------🚨🚨🚨🚨🚨🚨🚨');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Se connecter"),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              ReactiveForm(
                formGroup: form,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text("Email"),
                    const SizedBox(
                      height: 5,
                    ),
                    ReactiveTextField(
                      formControlName: 'email',
                      style: context.tStyle.bodyText1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Mot de passe"),
                    const SizedBox(
                      height: 5,
                    ),
                    ReactiveTextField(
                      formControlName: 'password',
                      obscureText: true,
                      style: context.tStyle.bodyText1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    MainButton(
                      label: "Se connecter",
                      onClick: () async {
                        print("tapped ${form.valid}");
                        if (form.valid) {
                          var result = await authController.signIn(
                              email: form.control("email").value,
                              password: form.control("password").value);
                          if (result) {
                            context.nav.pushReplacementNamed(kWrapper);
                          }
                        } else {}
                      },
                      backgroundColor: cGreen,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 15,
                    ),
                    MainButton(
                      label: "Créer un compte",
                      onClick: () async {
                        context.nav.pushNamed(kSignUpRoute);
                      },
                      backgroundColor: cBrown,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
