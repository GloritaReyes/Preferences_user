
import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';
import 'package:preferences_app/share_preferences/preferences.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
     initialRoute: HomeScreen.routeName,
     routes: {
      HomeScreen.routeName     :(_)=>   HomeScreen(),
      SettingsScreen.routeName :(_)=>  SettingsScreen(),
     },
    theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          iconTheme: IconThemeData(
            color: Colors.white,            
          ),
          
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,        
          )
        ),
        
      )
      
    );
  }
}