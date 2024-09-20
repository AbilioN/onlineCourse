import 'package:another/common/widgets/popup_messages.dart';
import 'package:another/pages/sign_up/notifier/register_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpController {
  late WidgetRef ref;

  SignUpController({required this.ref});

  void handleSignUp() {
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
    if (state.password != state.passwordConfirmation) {
      PopUpMessager.toastInfo("Your password didn`t match");
      return;
    }

    
  }
}
