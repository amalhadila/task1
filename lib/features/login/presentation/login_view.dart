import 'package:flutter/material.dart';
import 'package:task/features/login/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: LoginViewBody(),
    );
  }
}