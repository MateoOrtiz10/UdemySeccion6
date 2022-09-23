import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5) ,
            child: CircleAvatar(
              child: const Text('AO'),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: const  Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://image.tmdb.org/t/p/original/6JziYMFI5FA2Wi9Mzf1nrlt4QQ5.jpg'),
        )
      ),
    );
  }
}