import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../share/widgets/custom_button.dart';
import '../../../../share/widgets/custom_textfield.dart';
import 'verification_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: SingleChildScrollView(
            child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    const SizedBox(height: 60),

    Center(
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: AppColors.primaryGreen,
          borderRadius: BorderRadius.circular(18),
        ),
        child: const Icon(
          Icons.forest,
          color: Colors.white,
          size: 35,
        ),
      ),
    ),

    const SizedBox(height: 24),

    const Center(
      child: Text(
        "Sign Up",
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    const SizedBox(height: 8),

    const Center(
      child: Text(
        "Create an account so you can explore all the existing jobs",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 14,
        ),
      ),
    ),

    const SizedBox(height: 32),

    const Text(
      "Email",
      style: TextStyle(
        fontWeight: FontWeight.w600,
      ),
    ),

    const SizedBox(height: 8),

    const CustomTextField(
      hint: "Enter your email",
    ),

    const SizedBox(height: 16),

    const Text(
      "Password",
      style: TextStyle(
        fontWeight: FontWeight.w600,
      ),
    ),

    const SizedBox(height: 8),

    const CustomTextField(
      hint: "Enter your password",
      obscure: true,
    ),

    const SizedBox(height: 16),

    const Text(
      "Phone Number",
      style: TextStyle(
        fontWeight: FontWeight.w600,
      ),
    ),

    const SizedBox(height: 8),

    const CustomTextField(
      hint: "Enter your phone number",
    ),

    const SizedBox(height: 28),

    CustomButton(
      text: "Sign Up",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const VerificationScreen(),
          ),
        );
      },
    ),

    const SizedBox(height: 24),

    const Center(
      child: Text(
        "or continue with",
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    ),

    const SizedBox(height: 20),

    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialButton(Icons.apple),
        const SizedBox(width: 16),
        _socialButton(Icons.g_mobiledata),
        const SizedBox(width: 16),
        _socialButton(Icons.flutter_dash),
      ],
    ),

    const SizedBox(height: 24),

    Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: RichText(
          text: const TextSpan(
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: "Already Have An Account? ",
              ),
              TextSpan(
                text: "Sign In",
                style: TextStyle(
                  color: AppColors.primaryGreen,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    ),

    const SizedBox(height: 30),
  ],
),
          ),
        ),
      ),
    );
  }
}

Widget _socialButton(IconData icon) {
  return Container(
    width: 55,
    height: 55,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14),
    ),
    child: Icon(icon),
  );
}