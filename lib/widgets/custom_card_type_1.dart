import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.account_balance_wallet_sharp, color: AppTheme.primary),
            title: Text('Anime'),
            subtitle: Text('El anime o アニメ es un término con el que se identifica en general a la animación de procedencia japonesa. Hablamos de una industria muy potente, que fusiona el entretenimiento con la herencia cultural del país. Una de sus grandes virtudes es haber sabido seducir a públicos de cualquier gusto y edad.') ,
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end ,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Cancelar'),                  
                  ),

                  TextButton(
                  onPressed: () {}, 
                  child: const Text('Aceptar')
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
} 