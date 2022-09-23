import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(name: 'Tensei Shitara Slime Datta Ken', imageUrl:'https://somoskudasai.com/wp-content/uploads/2022/03/portada_tensei-shitara-slime-datta-ken-53.jpg'),
          SizedBox(height: 20),
          CustomCardType2(name: 'Kono Subarashii ', imageUrl:'http://pm1.narvii.com/7608/459277005d596d40913c65574a04eb83154f2825r1-1200-675v2_uhq.jpg'),
          SizedBox(height: 20),
          CustomCardType2(name:'Noragami', imageUrl:'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/b6b11baddc668b6f49d84cf0da53734ca6a8eb5b3454b6e9f9b306bf0e2b9e51._RI_V_TTW_.jpg'),
          SizedBox(height: 100)
        ],
      )
    );
  }
}

