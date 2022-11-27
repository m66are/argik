import 'package:argik/constants/colors.dart';
import 'package:argik/controllers/AuthController.dart';
import 'package:argik/helpers/context_helper.dart';
import 'package:argik/helpers/form_helper.dart';
import 'package:argik/routes/routes.dart';
import 'package:argik/widgets/MainButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  AuthController authController = Get.find<AuthController>();
  final form = FormGroup({
    'email': FormControl<String>(
        validators: [Validators.required, Validators.email]),
    'password': FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(8),
    ]),
    'passwordConfirmation': FormControl<String>(),
  }, validators: [
    mustMatch('password', 'passwordConfirmation')
  ]);
  @override
  Widget build(BuildContext context) {
    print(
        '🚨🚨🚨🚨🚨🚨🚨 ------ SignUpView WIDGET BUILD METHOD CALLED ----------🚨🚨🚨🚨🚨🚨🚨');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nouveau compte"),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
//
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
                    const Text("Confirmation de mot de passe"),
                    const SizedBox(
                      height: 5,
                    ),
                    ReactiveTextField(
                      formControlName: 'passwordConfirmation',
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
                      label: "Créer un compte",
                      onClick: () async {
                        if (form.valid) {
                          var result = await authController.signUp(
                              email: form.control("email").value,
                              password: form.control("password").value);
                          if (result) {
                            context.nav.pushReplacementNamed(kWrapper);
                          }
                        }
                      },
                      backgroundColor: cGreen,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              )

              //
            ],
          )),
    );
  }
}
