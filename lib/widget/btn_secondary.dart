import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme.dart';

class BtnSecondary extends StatelessWidget {
  const BtnSecondary({super.key, this.title, this.onTap});
  final String? title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: abu,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minimumSize: Size(
          MediaQuery.of(context).size.width,
          48,
        ),
      ),
      onPressed: onTap,
      child: Text(
        title ?? "",
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: medium,
          color: Colors.white,
        ),
      ),
    );
  }
}
