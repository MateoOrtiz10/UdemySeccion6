import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    //Para poder acceder mas facil a las opciones del menu
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Componentes en Flutter'),        
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(menuOptions[index].icon, color: AppTheme.primary),
          title:   Text(menuOptions[index].name),
          onTap: (){
            //Manera 1 de pasar de una pantalla a otra
            // final route = MaterialPageRoute(
            //   builder: (context) => const ListView1Screen()
            //   );
            //Navigator.pushReplacement(context, route);


            //Manera 2 de pasar de una pantalla a otra

            Navigator.pushNamed(context, menuOptions[index].route);
  

          
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: menuOptions.length  
        )
    );
  }
}