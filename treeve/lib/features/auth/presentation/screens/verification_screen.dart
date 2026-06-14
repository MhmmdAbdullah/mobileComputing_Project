import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../share/widgets/custom_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            children: [

              const SizedBox(height: 120),

              const Text(
                "Enter Verification Code",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "We send you a code to verify your phone number.",
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 50),

              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  4,
                  (index) => Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Didn't receive the code? Resend",
              ),

              const Spacer(),

              CustomButton(
                text: "Verify",
                onPressed: () {},
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}