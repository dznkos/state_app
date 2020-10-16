import 'package:estados_cubit/bloc/usuario/usuario_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: BlocBuilder<UsuarioCubit,UsuarioState>(
        builder: (_, state) {
          print( state );

          if ( state is UsuarioInitial ){
            return Center(child: Text('No hay informacion del usuario'));
          }else {
            return DatosPrincipal();
          }
                    
        },
      ),
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

          ListTile( title: Text('Nombre: '), ),
          ListTile( title: Text('Edad: '), ),

          Text('Professiones', style: TextStyle( fontSize: 15, fontWeight: FontWeight.bold) ),

          ListTile( title: Text('Profesion 1: '), ),
          ListTile( title: Text('Profesion 2: '), ),
          ListTile( title: Text('Profesion 3: '), ),
        ],
      ),
    );
  }
}