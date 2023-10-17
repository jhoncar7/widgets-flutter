import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'OK', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas Seguro?'),
        content: const Text(
            'Consequat in veniam dolor in ipsum ea ullamco excepteur. Deserunt cupidatat laboris ut commodo aliquip cillum. Sit occaecat incididunt sunt esse aliquip adipisicing elit ex qui ipsum officia voluptate. Labore exercitation duis aute reprehenderit qui. Esse ullamco sit consequat nisi. Ut id dolore exercitation laboris fugiat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamco. giat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamco giat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamco giat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamco giat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamco giat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamcogiat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamcogiat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamco giat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamco giat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamco giat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamco giat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamcogiat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamco giat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamco giat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamco giat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamco giat sunt ipsum irure minim deserunt. Exercitation quis mollit amet excepteur ex eiusmod ullamco'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Nulla voluptate officia excepteur reprehenderit ut reprehenderit. Qui aliquip Lorem duis dolor exercitation laborum in sint dolor nulla ad labore. Dolore consectetur fugiat fugiat consequat deserunt ex quis nisi anim exercitation non laborum pariatur et. Esse labore culpa velit eu irure amet adipisicing sint consectetur nostrud incididunt magna Lorem. Sint voluptate do consectetur in aliqua minim est officia dolore pariatur labore. Nulla voluptate officia excepteur reprehenderit ut reprehenderit. Qui aliquip Lorem duis dolor exercitation laborum in sint dolor nulla ad labore. Dolore consectetur fugiat fugiat consequat deserunt ex quis nisi anim exercitation non laborum pariatur et. Esse labore culpa velit eu irure amet adipisicing sint consectetur nostrud incididunt magna Lorem. Sint voluptate do consectetur in aliqua minim est officia dolore pariatur labore.'),
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar Dialogo')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
