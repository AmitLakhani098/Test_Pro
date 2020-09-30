import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _controller,
            ),
            OutlineButton(
              child: Text('Call Now'),
              onPressed: () => launch("tel:${_controller.text}"),
            )
          ],
        ),
      ),
    );
  }
}
