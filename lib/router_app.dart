import 'package:flutter/material.dart';

import 'configs/routes/local_routes.dart';
import 'views/home/home_view.dart';
import 'views/widgets/cs_app_bar.dart';
import 'views/widgets/cs_error.dart';

class RouterApp {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LocalRoutes.HOME:
        return _PageBuilder(
          child: const HomeView(),
          settings: settings,
        );

      default:
        return _PageBuilder(
          child: const _RotaInexistenteView(),
          settings: settings,
        );
    }
  }
}

class _PageBuilder extends PageRouteBuilder {
  ///Responsável pelo efeito de 'fade transition' entre as transições de telas
  _PageBuilder({
    required this.child,
    required this.settings,
  }) : super(
          settings: settings,
          transitionDuration: const Duration(milliseconds: 500),
          reverseTransitionDuration: const Duration(milliseconds: 100),
         
          pageBuilder: (context, animation, secAnimation) => child,
        );

  final Widget child;

  @override
  final RouteSettings settings;
}

class _RotaInexistenteView extends StatelessWidget {
  const _RotaInexistenteView();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CsAppBar(title: 'Ops! Ocorreu um erro'),
      body: Center(
        child: SingleChildScrollView(
          child: CsError(
            text: 'Desculpe, a página que você está procurando não foi encontrada. Relate o seu problema abrindo um chamado no botão abaixo!',
          ),
        ),
      ),
    );
  }
}
