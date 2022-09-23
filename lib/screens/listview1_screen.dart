import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);
  
  //Crear Lista constante
  final options = const['Metal Slug', 'Call of Duty', 'Fall Guys', 'Among US'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: [
          
          ...options.map(
            (game) =>ListTile(
              title: Text(game),
              trailing: const Icon(Icons.arrow_forward_sharp),
            )
            ).toList()


          // ListTile(            
          //   title: Text('Hola Mundo'),
          // )          
        ],
      ),
    );
  }
}