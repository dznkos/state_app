import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados_cubit/models/usuario.dart';

part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  UsuarioCubit() : super(UsuarioInitial());

  @override
  String toString() {
    return 'UsuarioInicial: existeUsuario: False';
  }

  void seleccionarUsuario(Usuario user) {
    emit(UsuarioActivo(user));
  }
}
