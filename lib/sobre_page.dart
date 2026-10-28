import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre o APP'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsetsGeometry.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/logotipo.png',
                width: 300,
                height: 120,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Portal de Notícias é um aplicativo desenvolvido, que vai consumir uma API própria desenvolvida em Laravel.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
