import 'package:estados_cubit/models/usuario.dart';
import 'package:estados_cubit/services/usuario_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Establecer Usuario', style: TextStyle(color: Colors.white)),
              onPressed:(){
                final usuarioService = Provider.of<UsuarioServices>(context, listen: false);
                
                final newuser = new Usuario(
                                      nombre: 'Tomas', 
                                      edad: 31,
                                      profesiones: ['Full Stack Developer', 'BackEnd Developer']
                                    );
                usuarioService.usuario = newuser;                
              },
              color: Colors.blue,
            ),
            MaterialButton(
              child: Text('Cambiar Edad', style: TextStyle(color: Colors.white)),
              onPressed:(){
                final usuarioService = Provider.of<UsuarioServices>(context, listen: false);

                usuarioService.editarEdad(28);                
              },
              color: Colors.blue,
            ),
            MaterialButton(
              child: Text('Agregar Profesion', style: TextStyle(color: Colors.white)),
              onPressed:(){
                final usuarioService = Provider.of<UsuarioServices>(context, listen: false);

                usuarioService.agregarProfesion();
              },
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

