import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Exemplo de Material Banner'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showBanner,
        tooltip: 'Abrir Banner',
        child: const Icon(Icons.notification_add),
      ),
    );
  }

  showBanner() {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        forceActionsBelow: true,
        leading: Icon(Icons.info),
        content: Text('Atualização disponível no app!'),
        actions: [
          TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
            },
            child: Text('Entendi'),
          ),
        ],
      ),
    );
  }
}
