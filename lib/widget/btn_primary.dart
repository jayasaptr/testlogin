import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme.dart';

class BtnPrimary extends StatelessWidget {
  const BtnPrimary({super.key, this.title, this.onTap});
  final String? title;
  final VoidCallback? onTap;
  final bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: merahMuda,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minimumSize: Size(
          MediaQuery.of(context).size.width,
          48,
        ),
      ),
      onPressed: isLoading ? () {} : onTap,
      child: Text(
        isLoading ? "Loading" : title ?? "",
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: medium,
          color: Colors.white,
        ),
      ),
    );
  }
}
