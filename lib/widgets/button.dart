import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtons extends StatelessWidget {
  final String textButton;
  final VoidCallback? onPressed;
  final double widthButton;
  final double heightButton;
  final double titleSize;
  final double borderRadius;
  final Color colorBg;
  final Color colorText;
  final Color borderColor;
  final bool isOutline;
  final Widget? prefix;
  final Widget? suffix;

  const CustomButtons({
    super.key,
    required this.textButton,
    this.onPressed,
    this.widthButton = double.infinity,
    this.heightButton = 50,
    this.titleSize = 16,
    this.borderRadius = 30,
    this.colorBg = Colors.indigoAccent,
    this.colorText = Colors.white,
    this.borderColor = Colors.indigoAccent,
    this.isOutline = false,
    this.prefix,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    final child = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (prefix != null) ...[prefix!, const SizedBox(width: 8)],
        Flexible(
          child: Text(
            textButton,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(
              color: isOutline ? borderColor : colorText,
              fontSize: titleSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        if (suffix != null) ...[const SizedBox(width: 8), suffix!],
      ],
    );

    return SizedBox(
      width: widthButton,
      height: heightButton,
      child: isOutline
          ? OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: borderColor, width: 1.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: child,
            )
          : ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: colorBg,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: child,
            ),
    );
  }
}
