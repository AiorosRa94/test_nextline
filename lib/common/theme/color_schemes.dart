import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF1976D2), // Cambiado a azul más claro
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFF5F5F5), // Blanco ligeramente cálido
  onPrimaryContainer: Color(0xFF333333), // Texto principal en gris oscuro
  secondary: Color(0xFFFFA500), // Naranja brillante
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFCDE8E1), // Azul verdoso claro
  onSecondaryContainer: Color(0xFFFFA500), // Texto en naranja
  tertiary: Color(0xFF333333), // Gris oscuro
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFFE4E1), // Rosa claro
  onTertiaryContainer: Color(0xFF000000), // Texto en negro
  error: Color(0xFFBA1A1A), // Rojo para errores
  errorContainer: Color(0xFFFFDAD6), // Rosa claro para fondo de errores
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002), // Fondo oscuro para errores
  background: Color(0xFFF5F5F5), // Fondo general
  onBackground: Color(0xFF1A1C1B), // Texto en negro
  surface: Color(0xFFFCFCFA), // Superficie (tarjetas, etc.)
  onSurface: Color(0xFF1A1C1B), // Texto en negro
  surfaceVariant: Color(0xFFDEE4E1), // Variante de superficie
  onSurfaceVariant: Color(0xFF424846), // Texto en gris oscuro
  outline: Color(0xFF727876), // Contorno
  onInverseSurface: Color(0xFFF0F1EF), // Texto en superficie inversa
  inverseSurface: Color(0xFF2F3130), // Superficie inversa (fondo oscuro)
  inversePrimary: Color(0xFF84D5C6), // Primario inverso
  shadow: Color(0xFF000000), // Sombra
  surfaceTint: Color(0xFF036B5E), // Tinte de superficie
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF1976D2), // Azul más claro
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF121212), // Negro como fondo
  onPrimaryContainer: Color(0xFFFFFFFF), // Texto en blanco
  secondary: Color(0xFFFFA500), // Naranja brillante
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFF121212), // Negro como fondo
  onSecondaryContainer: Color(0xFFFFA500), // Texto en naranja
  tertiary: Color(0xFFFFFFFF), // Blanco
  onTertiary: Color(0xFF121212), // Texto en negro
  tertiaryContainer: Color(0xFF121212), // Negro como fondo
  onTertiaryContainer: Color(0xFFFFE4E1), // Texto en rosa claro
  error: Color(0xFFBA1A1A), // Rojo para errores
  errorContainer: Color(0xFF121212), // Negro como fondo para errores
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002), // Fondo oscuro para errores
  background: Color(0xFF121212), // Fondo general en negro
  onBackground: Color(0xFFFFFFFF), // Texto en blanco
  surface: Color(0xFF2F3130), // Superficie (tarjetas, etc.) en gris oscuro
  onSurface: Color(0xFFFFFFFF), // Texto en blanco
  surfaceVariant: Color(0xFF424846), // Variante de superficie en gris más claro
  onSurfaceVariant: Color(0xFFDEE4E1), // Texto en blanco
  outline: Color(0xFF727876), // Contorno en gris
  onInverseSurface: Color(0xFFF0F1EF), // Texto en superficie inversa
  inverseSurface: Color(0xFF2F3130), // Superficie inversa (fondo oscuro)
  inversePrimary: Color(0xFF84D5C6), // Primario inverso
  shadow: Color(0xFF000000), // Sombra en negro
  surfaceTint: Color(0xFF036B5E), // Tinte de superficie en verde azulado
);
