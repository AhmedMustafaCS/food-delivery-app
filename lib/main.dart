import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:food_delivery/pages/bottom_navbar.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodak - Food Delivery',
      builder: (context, child) {
        final clampedTextScaler = MediaQuery.textScalerOf(context).clamp(minScaleFactor: 0.9, maxScaleFactor: 1.43);
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: clampedTextScaler),
          child: child!,
        );
      },
      theme: ThemeData(
        useMaterial3: true,
        //primarySwatch: Colors.deepOrange,
        // colorSchemeSeed:Colors.deepOrange,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepOrange,
        ),
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[100],
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
        ),
        dividerTheme: const DividerThemeData(thickness: 2, indent: 20, endIndent: 20, color: Colors.black12),
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.deepOrange,
        ),
        fontFamily: 'OpenSans',
      ),
      home: const BottomNavBarPage(),
    );
  }
}
