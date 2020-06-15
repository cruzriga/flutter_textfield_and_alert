import 'package:flutter/material.dart';
class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

enum DialogAction {YES, NO}
class _MyTextFieldState extends State<MyTextField> {
  String Texto = '';
  final TextEditingController inputText = TextEditingController();

  void alertResutl(DialogAction action){
    print("Tu seleccion fue $action");
  }
  void showAlert(){
    setState(() {
      Texto = inputText.text;
      inputText.text = '';
    });

    AlertDialog dialog = AlertDialog(
      content: Text(Texto),
      actions: <Widget>[
        FlatButton(
          child: Text("Si"),
          onPressed: () {alertResutl(DialogAction.YES);},
        ) ,
        FlatButton(
          child: Text("No"),
          onPressed: () {alertResutl(DialogAction.NO);},
        )
      ],
    );
    
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        }
    );


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo alert dialog'),
        backgroundColor: Colors.blueGrey,
      ),
      body:Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "Ingrese el texto aqui",
              ),
              controller: inputText,
            ),
            RaisedButton(
              onPressed: showAlert,
              child: Text('Ver alerta'),
            ),
          ],
        ),
      )
    );
  }
}
