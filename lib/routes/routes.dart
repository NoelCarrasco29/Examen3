import 'package:express/pages/principal.dart';
import 'package:express/pages/segunda.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'principal': (_) => PrincipalPage(),
  'segunda': (_) => SegundaPage(),
};
