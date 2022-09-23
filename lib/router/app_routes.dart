import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const initialRoute = 'home';
  
  //Lista de Menu
  static final menuOptions = <MenuOption> [
    //TODO: Borrar home
    // MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listView1', icon: Icons.list_rounded, name: 'ListView Tipo 1', screen: const ListView1Screen()),
    MenuOption(route: 'listView2', icon: Icons.list, name: 'List View Tipo 2', screen: const ListView2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alert_rounded, name: 'Alertas', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.credit_card, name: 'Tarjetas', screen: const CardScreen()),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle_outlined, name: 'Avatar Circular', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.play_circle_outline_outlined, name: 'Contenedor Animado', screen: const AnimatedScreen()),
    MenuOption(route: 'input', icon: Icons.input_rounded, name:'Inputs', screen: const InputScreen()),
    MenuOption(route: 'slider', icon: Icons.slow_motion_video_rounded, name:'Slider', screen: const SliderScreen()),
    MenuOption(route: 'lisviewbuilder', icon: Icons.build_circle_outlined, name:'Scroll Infinito & Pull to Refresh', screen: const ListViewBuilderScreen()),
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)>appRoutes = {};    
    appRoutes.addAll({'home' : (BuildContext context) => HomeScreen()});
    for (final option in menuOptions) {      
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

//Forma de crear las rutas #1

  // static Map<String, Widget Function(BuildContext)> routes = {
  //     'home'     :(BuildContext context) => const HomeScreen(), 
  //     'listView1': (BuildContext context) => const ListView1Screen(),
  //     'listView2': (BuildContext context) => const ListView2Screen(),
  //     'alert'    : (BuildContext context) => const AlertScreen(),
  //     'card'     : (BuildContext context) => const CardScreen(),
  //     };

      static onGenerateRoute(RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const AlertScreen() 
          );
      }
  }

