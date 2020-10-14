import 'package:flutter/material.dart';

import 'package:estados_cubit/models/usuario.dart';
import 'package:estados_cubit/services/usuario_service.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('')
      ),      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Establecer Usuario', style: TextStyle(color: Colors.white)),
              onPressed:(){
                final nuevoUsuario = new Usuario( nombre: 'Gohan', edad: 22 );
                usuarioService.cargarUsuario(nuevoUsuario);
              },
              color: Colors.blue,
            ),
            MaterialButton(
              child: Text('Cambiar Edad', style: TextStyle(color: Colors.white)),
              onPressed:(){
                usuarioService.cambiarEdad(30);
              },
              color: Colors.blue,
            ),
            MaterialButton(
              child: Text('Agregar Profesion', style: TextStyle(color: Colors.white)),
              onPressed:(){},
              color: Colors.blue,
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () {
          Navigator.pop(context);
        }, 
      ),
    );
  }
}

