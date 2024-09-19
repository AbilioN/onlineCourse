import 'package:another/common/widgets/button_widgets.dart';
import 'package:another/common/widgets/components.dart';
import 'package:another/common/widgets/text_widgets.dart';
import 'package:another/pages/sign_in/widgets/sign_in_widgets.dart';
import 'package:another/pages/sign_up/notifier/register_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUp extends ConsumerWidget {
  const SignUp({super.key});

  void handleRegister() {
    print("handle");
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registerProvider = ref.watch(registerNotifierProvider);

    return Container(
      child: SafeArea(
          child: Scaffold(
              appBar: Components.buildAppBar(),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Center(
                      child: Text14(
                          text: "Enter your details below & free sign up"),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    // email
                    Components.appTextField(
                      text: "User name",
                      iconName: "assets/icons/user.png",
                      hintText: "Enter your user name",
                      callback: (value) => ref
                          .read(registerNotifierProvider.notifier)
                          .onUserNameChange(value),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // email
                    Components.appTextField(
                      text: "Email",
                      iconName: "assets/icons/user.png",
                      hintText: "Enter your email address",
                      callback: (value) => ref
                          .read(registerNotifierProvider.notifier)
                          .onUserEmailChange(value),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    Components.appTextField(
                      text: "Password",
                      iconName: "assets/icons/lock.png",
                      hintText: "Enter your password",
                      obscureTexts: true,
                      callback: (value) => ref
                          .read(registerNotifierProvider.notifier)
                          .onUserPasswordChange(value),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Components.appTextField(
                      text: "Password Confirmation",
                      iconName: "assets/icons/lock.png",
                      hintText: "Confirm your password",
                      obscureTexts: true,
                      callback: (value) => ref
                          .read(registerNotifierProvider.notifier)
                          .onUserPasswordConfirmationChange(value),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25),
                      child: const Text14(
                          text:
                              "By creating an account you are agreeing with our terms of condition"),
                    ),

                    const SizedBox(
                      height: 100,
                    ),

                    Center(
                      child: ButtonWidgets.appButton(
                        buttonName: "Register",
                        context: context,
                        callback: handleRegister,
                      ),
                    )
                  ],
                ),
              ))),
    );
  }
}
