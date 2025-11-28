import 'package:copain_copanion_app/screens/play_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/copain_screen.dart';



void main() async {
  runApp(CopainCompanionApp());
}

class CopainCompanionApp extends StatelessWidget {
  const CopainCompanionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider( 
      create: (context) => CopainCompanionAppState(),
      child: MaterialApp(
        title: 'COPAIN App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: MainHomeScreen(),
      ),
    );
  } 
}


class CopainCompanionAppState extends ChangeNotifier {

}

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int _selectedIndex = 1;

  final List<Widget> _widgetOptions = [
    PlayScreen(),
    CopainScreen(),
    PlayScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.blueGrey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset),
            label: 'play',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_toy),
            label: 'copain',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_fix_high),
            label: 'create',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}