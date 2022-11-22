import 'package:flutter/material.dart';
import 'package:untitled1/config/palette.dart';

InputDecoration registerInputDecoration({String hintText = ""}) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
    hintStyle: const TextStyle(color: Colors.white, fontSize: 18),
    hintText: hintText,
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Palette.darkorange),
    ),
    focusedErrorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: Palette.darkorange),
    ),
    errorStyle: const TextStyle(color: Colors.white),
  );
}

InputDecoration signInInputDecoration({String hintText = ""}) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
    hintStyle: const TextStyle(fontSize: 18),
    hintText: hintText,
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(width: 2, color: Palette.darkBlue),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Palette.darkBlue),
    ),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Palette.darkorange),
    ),
    focusedErrorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: Palette.darkorange),
    ),
    errorStyle: const TextStyle(color: Palette.darkorange),
  );
}