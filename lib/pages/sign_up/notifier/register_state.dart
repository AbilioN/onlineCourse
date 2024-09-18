class RegisterState {
  final String userName;
  final String email;
  final String password;
  final String passwordConfirmation;

  RegisterState({
    this.userName = "",
    this.email = "",
    this.password = "",
    this.passwordConfirmation = "",
  });

  RegisterState copyWith({
    String? userName,
    String? email,
    String? password,
    String? passwordConfirmation,
  }) {
    return RegisterState(
      userName: userName ?? this.userName,
      email: email ?? this.email,
      password: password ?? this.password,
      passwordConfirmation: passwordConfirmation ?? this.passwordConfirmation,
    );
  }
}
