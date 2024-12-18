import 'package:flutter/material.dart';
import 'package:wisatacandi/screens/FavoriteScreen.dart';
import 'package:wisatacandi/screens/Search_Screen.dart';
import 'package:wisatacandi/screens/SignInScreen.dart';
import 'package:wisatacandi/screens/SignUpScreen.dart';
import 'package:wisatacandi/screens/home_screen.dart';
import 'package:wisatacandi/screens/profile_screen.dart';
import 'data/candi_data.dart';
import 'package:wisatacandi/screens/FavoriteScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        home: MainSreen(),
        initialRoute: '/',
        routes: {
          '/homescreen': (context) => const HomeScreen(),
          '/signin' : (context) => const SignInScreen(),
          '/signup' : (context) => const SignUpScreen(),
        }
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.deepPurple),
          titleTextStyle: TextStyle(
            color: Colors.deepPurple,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
          primary: Colors.deepPurple,
          surface: Colors.deepPurple[50],
        ),
        useMaterial3: true,
      ),
      // home: Signinscreen(),
      // home: DetailScreen(candi: candiList[0]),
      // home: profile_Screen(),
      // home: SignUpScreen(),
      // home: SearchScreen(),
      // home: Home_Screen(),
    );
  }
}

class MainSreen extends StatefulWidget {
  const MainSreen({super.key});

  @override
  State<MainSreen> createState() => _MainSreenState();
}

class _MainSreenState extends State<MainSreen> {
  // TODO: 1. Deklarasikan variable
  int _CurrentIndex = 0;

  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    Favoritescreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 2. Buat properti body berupa widget yang ditampilkan
      body: _children {_CurrentIndex},
      // TODO: 3. Buat properti bottomNavigationBar dengan nilai Theme
      bottomNavigationBar: Theme(
        // TODO: 4. Buat data dan child dari Theme
        data: Theme.of(context).copyWith(
          canvasColor: Colors.deepPurple[50],
        ),
        child: BottomNavigationBar(items: items),
      ),
      )
    );
  }
}






