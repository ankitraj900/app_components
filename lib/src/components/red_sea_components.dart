import 'package:flutter/material.dart';

class YPAYComponents {
  static Widget textField({
    required TextEditingController controller,
    String? labelText,
    String? hintText,
    bool obscureText = false,
    TextInputType? keyboardType,
    String? Function(String?)? validator,
    IconData? prefixIcon,
    bool isPassword = false,
    void Function()? onTogglePassword,
    bool showPassword = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: isPassword ? !showPassword : obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        errorText: validator?.call(controller.text),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(showPassword ? Icons.visibility : Icons.visibility_off),
                onPressed: onTogglePassword,
              )
            : null,
      ),
    );
  }
} 