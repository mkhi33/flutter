import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;
  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText!,
        keyboardType: keyboardType ?? TextInputType.text,
        autofocus: false,
        initialValue: '',
        textCapitalization: TextCapitalization.words,
        onChanged: (value) {
          print(value);
        },
        validator: (value) {
          if (value == null) {
            return 'El campo no puede estar vacío';
          }
          return value.length < 3 ? 'Mínimo 3 caracteres' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          suffixIcon: icon == null ? null : Icon(icon),
          icon: suffixIcon == null ? null : Icon(suffixIcon),
        ));
  }
}
