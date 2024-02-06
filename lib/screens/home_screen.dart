
import 'package:flutter/material.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
//variable estatic 

static const String routeName = 'Home';  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(  
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text('isDarkmode: ${Preferences.isDarkmode }'),
          Divider(),
          Text('Género: ${Preferences.gender }'),
          Divider(),
          Text('Nombre de usuario: ${Preferences.name }'),
          Divider(),
        ],
      )
    );
  }
}