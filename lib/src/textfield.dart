import 'package:flutter/material.dart';
class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String Texto = '';
  final TextEditingController inputText = TextEditingController();
  void submitText(String value){
    setState(() {
        Texto += value+"\n";
        inputText.text = '';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Textfield App'),
        backgroundColor: Colors.redAccent,
      ),
      body:Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "Ingrese el texto aqui",
              ),
              onSubmitted: submitText  ,
              controller: inputText,
            ),
            Text(Texto),
          ],
        ),
      )
    );
  }
}
