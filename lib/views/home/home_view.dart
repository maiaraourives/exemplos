import 'package:card_usuarios/card_usuario.dart';
import 'package:criando_pkg/criando_package.dart';
import 'package:flutter/material.dart';

import '../widgets/cs_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(
        title: 'Testes',
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: CustomButton(
              onPressed: () {},
              backgroundColor: Colors.amber,
              child: const Text(
                'Entrar',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ),
          const CardUsuario(descricacaoUnidade: 'Unidade', nome: 'Marta'),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
