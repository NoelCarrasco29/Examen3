import 'package:express/routes/routes.dart';
import 'package:express/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //return MaterialApp();
    return MultiProvider(
      providers: [
        //creamos una instancia global de auth_services
        ChangeNotifierProvider(
          create: (_) => AuthService(),
        ),
      ],
      child: MaterialApp(
        //debugShowCheckedModeBanner: false,
        title: 'Examen2',
        initialRoute: 'principal',
        routes: appRoutes,
      ),
    );
  }
}

// MaterialApp(
//       //debugShowCheckedModeBanner: false,
//       title: 'Examen2',
//       initialRoute: 'principal',
//       routes: appRoutes,
//     );