
import 'package:estados_cubit/models/usuario.dart';
import 'package:flutter/material.dart';

class UsuarioServices with ChangeNotifier {

  Usuario _usuario;

  Usuario get usuario => this._usuario;

  bool get existeUsuario => (this._usuario != null)? true : false;

  set usuario (Usuario user ){
    this._usuario = user;
    notifyListeners();
  }


}