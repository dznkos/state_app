part of 'usuario_cubit.dart';

@immutable
abstract class UsuarioState {}

class UsuarioInitial extends UsuarioState {
  final existeusuario = false;
}

class UsuarioActivo extends UsuarioState {
  final existeusuario = true;

  final Usuario user;

  UsuarioActivo(this.user);
}
