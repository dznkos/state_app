import 'package:estados_cubit/models/usuario.dart';
import 'package:estados_cubit/services/usuario_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageOne extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final usuarioService = Provider.of<UsuarioServices>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: DatosPrincipal( usuarioService.usuario ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: (){
          Navigator.pushNamed(context, 'pagina2');
        }
      ),
    );
  }

}

class DatosPrincipal extends StatelessWidget {
  
  final Usuario usuario;

  const DatosPrincipal( this.usuario );


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text('General', style: TextStyle( fontSize: 15, fontWeight: FontWeight.bold) ),

          ListTile( title: Text('Nombre: ${usuario.nombre}'), ),
          ListTile( title: Text('Edad: ${usuario.edad}'), ),

          Text('Professiones', style: TextStyle( fontSize: 15, fontWeight: FontWeight.bold) ),

          ListTile( title: Text('Profesion 1: '), ),
          ListTile( title: Text('Profesion 2: '), ),
          ListTile( title: Text('Profesion 3: '), ),
        ],
      ),
    );
  }
}