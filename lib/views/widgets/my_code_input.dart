import 'package:flutter/material.dart';
import 'package:flutter_verification_code_field/flutter_verification_code_field.dart';

class MyCodeInput extends StatelessWidget {
  const MyCodeInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerificationCodeField(
            length: 4,
            spaceBetween: 10,
            onFilled: (value) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('$value Submitted successfully! 🎉'),
                ),
              );
            }),
      ],
    );
  }
}