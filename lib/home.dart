import 'package:b_api/api.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _textController = TextEditingController();

  String _resultText = 'here the change occurs';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _textController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final text = _textController.text;
                final data = await getData(text);
                // print(data.text);
                setState(() {
                  _resultText = data.text ?? 'haaaaaaaaaaaha';
                });
              },
              child: const Text('press'),
            ),
            Text(_resultText)
          ],
        ),
      )),
    );
  }
}
