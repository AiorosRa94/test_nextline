// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:test_nextline/resources/screen/responsive/responsive.dart';

class Tema {
  // ESTILOS DE TEXTO

  static TextStyle Titulo1(BuildContext context, Color? colorTexto) {
    return TextStyle(fontSize: Responsive.height * 3, color: colorTexto ?? Colors.black, fontWeight: FontWeight.bold);
  }

  static TextStyle Etiqueta1(BuildContext context, Color? colorTexto, FontWeight? fontWeight) {
    return TextStyle(fontSize: Responsive.height * 2.2, color: colorTexto ?? Colors.black, fontWeight: fontWeight ?? FontWeight.normal);
  }

  static TextStyle Etiqueta3(BuildContext context, Color? colorTexto, FontWeight? fontWeight) {
    return TextStyle(fontSize: Responsive.height * 2, color: colorTexto ?? Colors.black, fontWeight: fontWeight ?? FontWeight.normal);
  }

  static TextStyle Etiqueta6(BuildContext context, Color? colorTexto, FontWeight? fontWeight) {
    return TextStyle(fontSize: Responsive.height * 1.6, color: colorTexto ?? Colors.black, fontWeight: fontWeight ?? FontWeight.normal);
  }

  static TextStyle Etiqueta8(BuildContext context, Color? colorTexto, FontWeight? fontWeight) {
    return TextStyle(fontSize: Responsive.height * 1.4, color: colorTexto ?? Colors.black, fontWeight: fontWeight ?? FontWeight.normal);
  }

  static TextStyle Etiqueta10(BuildContext context, Color? colorTexto, FontWeight? fontWeight) {
    return TextStyle(fontSize: Responsive.height * 1.2, color: colorTexto ?? Colors.black, fontWeight: fontWeight ?? FontWeight.normal);
  }

  static TextStyle EtiquetaEspecial(BuildContext context, Color? colorTexto, FontWeight? fontWeight) {
    return TextStyle(fontSize: Responsive.height * 1, color: colorTexto ?? Colors.black, fontWeight: fontWeight ?? FontWeight.normal);
  }
}
