import 'package:another/pages/sign_up/notifier/register_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpController {
  late WidgetRef ref;

  SignUpController({required this.ref});

  void handleSignUp() {
    var state = ref.read(registerNotifierProvider);

    String name = state.userName;
    String email = state.email;
    // String name = state.userName;
    // String name = state.userName;

    print("Your name is $name");
    print("Your email is $email");
  }
}
