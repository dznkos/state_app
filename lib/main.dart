import 'package:estados_cubit/bloc/usuario/usuario_cubit.dart';
import 'package:estados_cubit/pages/page_one.dart';
import 'package:estados_cubit/pages/page_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => new UsuarioCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'pagina1',
        routes: {
          'pagina1': (_) => PageOne(),
          'pagina2': (_) => PageTwo(),
        },
      ),
    );
  }
}
