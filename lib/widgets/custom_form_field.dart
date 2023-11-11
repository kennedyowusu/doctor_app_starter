import 'package:doctor_app_starter/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    required this.screenHeight,
    this.inputController,
    required this.hintText,
    this.prefixIcon,
    required this.keyboardType,
    this.validator,
    required this.labelText,
    this.maxLengthEnforcement,
    this.maxLength,
    this.maxLines,
    this.isEnabled,
    this.onChanged,
  });

  final double screenHeight;
  final TextEditingController? inputController;
  final String hintText;
  final IconData? prefixIcon;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final String labelText;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final int? maxLength, maxLines;
  final bool? isEnabled;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: inputController,
        validator: validator,
        maxLengthEnforcement: maxLengthEnforcement,
        maxLength: maxLength,
        maxLines: maxLines,
        keyboardType: keyboardType,
        buildCounter: (BuildContext context,
            {required int currentLength,
            required bool isFocused,
            required int? maxLength}) {
          return Container();
        },
        onChanged: onChanged,
        decoration: InputDecoration(
          fillColor: const Color(0xFFF4F4F4),
          filled: true,
          focusColor: Colors.white,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 14, // Reduced font size
            color: greyColor,
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: const Color(0xFF111827).withOpacity(0.5),
            size: 20, // Reduced icon size
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: greyColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: greyColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: greyColor,
            ),
          ),
        ),
      ),
    );
  }
}
