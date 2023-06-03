import 'package:cbt_test/route_configuration/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';

import 'controller/bindings.dart';
import 'route_configuration/route_configuration.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  final appBindings = AppBindings();
  appBindings.dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      checkerboardOffscreenLayers: false,
      debugShowCheckedModeBanner: false,
      title: 'CBT Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      defaultTransition:
          Transition.circularReveal, // Sets the default transition animation
      defaultGlobalState: true, //
      getPages: AppRoutesConfiguration.routes,
      initialRoute: AppRouteNames.home,
    );
  }
}
