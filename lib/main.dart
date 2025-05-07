import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/provider/provider_opperation.dart';

import 'Screens/nav_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider(
     create: (context)=> ProviderOperation(),
     child: MaterialApp(
       title: 'Youtube UI',
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         brightness: Brightness.dark,
         bottomNavigationBarTheme:
           const BottomNavigationBarThemeData(
             selectedItemColor: Colors.white,
           ),
       ),
       home: const NavScreen(),
     ),
   );
  }

}