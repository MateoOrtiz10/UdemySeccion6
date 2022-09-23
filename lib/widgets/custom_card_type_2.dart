import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCardType2({
    Key? key, required this.imageUrl, 
    this.name
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 30,
      shadowColor: Colors.red.withOpacity(0.5),
      child: Column(
        children: [

            FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity, //Donde el ancho es limitado
            height: 230,
            fit: BoxFit.cover, //Adapta a todo el tamaño del card la imagen 
            fadeInDuration: const Duration(milliseconds: 300),
            ),

            if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: EdgeInsets.only(right: 20, top: 20, bottom: 20),
              child: Text(name!),
            )
        ],
      )
    );
  }
}