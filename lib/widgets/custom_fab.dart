import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isLastScreen;

  const CustomFloatingActionButton({
    Key? key,
    required this.onPressed,
    required this.isLastScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final icon = isLastScreen
        ? const Icon(Icons.check_box_rounded, color: Colors.white)
        : const Icon(Icons.arrow_forward, color: Colors.white);

    return FloatingActionButton(
      elevation: 0,
      backgroundColor: Colors.transparent,
      onPressed: onPressed,
      child: Container(
        width: screenWidth * 0.14,
        height: screenWidth * 0.14,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
        ),
        child: icon,
      ),
    );
  }
}
