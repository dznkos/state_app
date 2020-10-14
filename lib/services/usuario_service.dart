import 'dart:async';

import 'package:estados_cubit/models/usuario.dart';



//Singleton Class
class _UsuarioService {

  Usuario _usuario;

  // STREAM
  StreamController<Usuario> _usuarioStreamController = new StreamController<Usuario>.broadcast(); 

  
  //Stream 
  Stream<Usuario> get usuarioStream => _usuarioStreamController.stream;

  // liberar recursos stream
  void disposeStreams() {
    this._usuarioStreamController?.close();
  }

  //END STREAM

  Usuario get usuario => this._usuario;
  bool get existeusuario => this._usuario != null ? true : false;

  void cargarUsuario(Usuario user) {
    this._usuario = user;
    this._usuarioStreamController.add(user);
  } 

  void cambiarEdad(int nuevaEdad) {
    this._usuario.edad = nuevaEdad;
    this._usuarioStreamController.add( this._usuario );
  }

}

final usuarioService = new _UsuarioService();