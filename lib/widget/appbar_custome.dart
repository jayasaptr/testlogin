import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../theme.dart';

class AppbarCustome extends StatelessWidget {
  const AppbarCustome(
      {super.key, this.title, this.subTitle, this.onTap, this.action});
  final String? title;
  final String? subTitle;
  final VoidCallback? onTap;
  final VoidCallback? action;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      height: MediaQuery.of(context).size.height * 0.10,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          onTap != null
              ? InkWell(
                  onTap: onTap,
                  child: SvgPicture.asset(
                    'assets/icons/back.svg',
                  ),
                )
              : const SizedBox(),
          onTap != null ? const SizedBox(width: 24) : const SizedBox(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title ?? "",
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: medium,
                    color: textBlack,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subTitle ?? "",
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: medium,
                    color: textAbu,
                  ),
                ),
              ],
            ),
          ),
          action != null
              ? InkWell(
                  onTap: action,
                  child: SvgPicture.asset(
                    'assets/icons/keranjang.svg',
                    width: 8.w,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  // @override
  // Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
