// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ActionButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: const Color(0xffff80b1b7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Set the border radius here
      ),
      child: const Text(
        'EXPRIMER MES RÊVES >',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
