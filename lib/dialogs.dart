import 'package:custom_dialog_flutter_demo/custom_dialog_box.dart';
import 'package:flutter/material.dart';

class Dialogs extends StatefulWidget {
  @override
  _DialogsState createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Dialog In Flutter"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Center(
          child: IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDialogBox(
                      title: "Inicio de sesión",
                      descriptions:
                          "Para acceder a Mi Espacio, ingresa tu RFC y contraseña. Si eres persona física y no tienes o no recuerdas tu contraseña, accede a la opción: Genera o actualiza tu contraseña AQUÍ.",
                      text: "Aceptar",
                    );
                  });
            },
            icon: Image.asset('assets/info.png'),
            iconSize: 200,
          ),
        ),
      ),
    );
  }
}
