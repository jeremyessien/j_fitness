import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/theme/app_theme.dart';

enum AppButtonType { normal, withCall }

class AppButton extends StatefulWidget {
  final AppButtonType type;
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final double? height;
  final double? width;
  final EdgeInsets? margin;
  const AppButton({
    super.key,
    required this.type,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.height,
    this.width,
    this.margin,
  });

  @override
  _AppButtonState createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.isLoading ? null : widget.onPressed,
      child: Container(
        height: widget.height ?? 45.w,
        width: widget.width ?? double.maxFinite,
        margin: widget.margin ?? const EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppTheme.brightTheme.primaryColor,
        ),
        child: widget.isLoading
            ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              )
            : Text(
                widget.text,
                style:  TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16.sp),
              ),
      ),
    );
  }
}
