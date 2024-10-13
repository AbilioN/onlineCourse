import 'package:another/common/global_loader/global_loader.dart';
import 'package:another/common/widgets/popup_messages.dart';
import 'package:another/pages/sign_up/notifier/register_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpController {
  late WidgetRef ref;

  SignUpController({required this.ref});

  Future<void> handleSignUp() async {
    var state = ref.read(registerNotifierProvider);

    String name = state.userName;
    String email = state.email;
    String password = state.password;
    String passwordConfirmation = state.passwordConfirmation;

    if (state.userName.length < 6 || name.length < 6) {
      PopUpMessager.toastInfo("Your name is too short");
      return;
    }

    if (state.email.isEmpty || email.isEmpty) {
      PopUpMessager.toastInfo("Your email is empty");
      return;
    }

    if ((state.password != state.passwordConfirmation) ||
        password != passwordConfirmation) {
      PopUpMessager.toastInfo("Your password didn`t match");
      return;
    }
    if ((state.password.isEmpty || state.passwordConfirmation.isEmpty) ||
        (password.isEmpty || passwordConfirmation.isEmpty)) {
      PopUpMessager.toastInfo("Your password is empty");
      return;
    }

    ref.read(appLoaderProvider.notifier).setLoaderValue(true);

    Future.delayed(Duration(seconds: 2), () async {
      try {
        var context = Navigator.of(ref.context);

        final credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        // ref.read(appLoaderProvider.notifier).setLoaderValue(true);

        if (kDebugMode) {
          if (credential.user != null) {
            print(credential.user);
            await credential.user?.sendEmailVerification();
            await credential.user?.updateDisplayName(name);
            // get server photo url
            // setUserPhotoUrl
            PopUpMessager.toastInfo("An email has been sent to you");
            // Navigator.pushNamed(context, "/signIn");
            context.pop();
          }
        }
      } catch (e) {
        if (kDebugMode) {
          ref.read(appLoaderProvider.notifier).setLoaderValue(false);
          print(e);
        }
      }
    });
    // ref.read(appLoaderProvider.notifier).setLoaderValue(true);

    // final loader = ref.watch(appLoaderProvider);
  }
}
