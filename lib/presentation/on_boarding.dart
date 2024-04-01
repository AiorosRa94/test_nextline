import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_nextline/application/providers.dart';
import 'package:test_nextline/common/theme/tema.dart';
import 'package:test_nextline/common/widgets/general_button.dart';
import 'package:test_nextline/resources/screen/responsive/responsive.dart';

class OnBoarding extends ConsumerStatefulWidget {
  const OnBoarding({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OnBoardingState();
}

class _OnBoardingState extends ConsumerState<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    final usuarios = ref.watch(usuariosProvider);

    return SafeArea(
      child: Scaffold(
          body: usuarios.when(
              data: (data) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Bienvenido a la app de Nextline',
                      style: Tema.Titulo1(context, Theme.of(context).colorScheme.primary),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: Responsive.width * 90,
                      child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(children: [
                            TextSpan(text: 'Esta aplicacion es una prueba para ', style: Tema.Etiqueta3(context, Theme.of(context).colorScheme.onPrimaryContainer, null)),
                            TextSpan(text: 'Nextline ', style: Tema.Etiqueta3(context, Theme.of(context).colorScheme.primary, FontWeight.bold)),
                            TextSpan(text: 'Una aplicación donde podras manejar tus tareas de una manera', style: Tema.Etiqueta3(context, Theme.of(context).colorScheme.onPrimaryContainer, null)),
                            TextSpan(text: ' sencilla y eficiente.', style: Tema.Etiqueta3(context, Theme.of(context).colorScheme.primary, FontWeight.bold)),
                            TextSpan(text: '\nPrimero comenzaremos agregando un ', style: Tema.Etiqueta3(context, Theme.of(context).colorScheme.onPrimaryContainer, null)),
                            TextSpan(text: 'usuario', style: Tema.Etiqueta3(context, Theme.of(context).colorScheme.primary, FontWeight.bold)),
                          ])),
                    ),
                    GeneralButton(
                        height: 5,
                        width: 60,
                        text: Text(
                          "Agregar usuario",
                          style: Tema.Etiqueta3(context, Theme.of(context).colorScheme.onSecondary, null),
                          textAlign: TextAlign.center,
                        ),
                        colorButton: Theme.of(context).colorScheme.secondary,
                        event: () {
                          //TODO: Agregar usuario
                        })
                  ],
                );
              },
              loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
              error: (error, stack) => Center(
                    child: Text('Error: $error'),
                  ))),
    );
  }
}
