import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_view/screen/homr/view/Web_creen.dart';
import 'package:web_view/screen/provider/web_provider.dart';
import 'package:web_view/screen/view/web_view_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context)=>Web_view_provider(),),
  ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>web_screen(),
        'web_screen2':(context)=>web_screen2(),
      },
    ),
  ),
  );
}