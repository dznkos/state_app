import 'package:estados_cubit/pages/page_one.dart';
import 'package:estados_cubit/pages/page_two.dart';
import 'package:estados_cubit/services/usuario_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider( create: (_) => new UsuarioServices() ),    
      ],
        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'pagina1',
        routes: {
          'pagina1' : (_) => PageOne(),
          'pagina2' : (_) => PageTwo(),
        },
      ),
    );
  }
}