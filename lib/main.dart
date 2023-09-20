import 'package:flutter/material.dart';
import 'package:animator/animator.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());
final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
 // textTheme: GoogleFonts.latoTextTheme(),
);
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
     // theme: ThemeData(primarySwatch: Colors.blue),
     theme: theme,
      home: MinistryScreen(),
    );
  }
}

class MinistryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NyayLink'),
        
      ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Animator<double>(
            
            curve: Curves.easeIn,
            cycles: 1,
            duration: Duration(seconds: 3),
            tween: Tween<double>(begin: 0, end: 1),
            builder: (context, animatorState, child) => Opacity(
              opacity: animatorState.value,
              child: SvgPicture.asset('assets/images/Ministry_of_Law_and_Justice.svg'), 
            ),
          ),
        ),
      ),
    );
  }
}
