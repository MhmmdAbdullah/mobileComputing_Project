import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../../share/widgets/custom_button.dart';
import '../../../../../share/widgets/custom_textfield.dart';
import 'register_screen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              const SizedBox(height: 70),

              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.primaryGreen,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Icon(Icons.forest, color: Colors.white),
              ),

              const SizedBox(height: 30),

              const Text(
                "Welcome",
                style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              const Text(
                "Create an account so you can manage your personal account",
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Email"),
              ),

              const SizedBox(height: 8),

              const CustomTextField(hint: "Email"),

              const SizedBox(height: 20),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Password"),
              ),

              const SizedBox(height: 8),

              const CustomTextField(hint: "Password", obscure: true),

              const SizedBox(height: 15),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Forgot Password?"),
                ),
              ),

              CustomButton(text: "Sign In", onPressed: () {}),

              const SizedBox(height: 20),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const RegisterScreen()),
                  );
                },
                child: const Text("Don't have an account? Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
