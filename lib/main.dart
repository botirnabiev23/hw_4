import 'package:flutter/material.dart';
import 'profil_page.dart';
import 'profil_page2.dart';

void main(){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfilPage(),
    );
  }
}