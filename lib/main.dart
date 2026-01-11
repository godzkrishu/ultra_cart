import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ultra_cart/utils/helpers/app_utils.dart';
import 'package:ultra_cart/utils/local_storage/TAppStorage.dart';
import 'package:ultra_cart/utils/theme/app_theme.dart';
import 'features/onboarding/screens/onboarding_screen.dart';

void main() async {
  ////list of flow of task

  ////add widget bindings
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  ///init local storage
  try{
    await ObjectBoxService.init();
  }catch(e){
    print("Error initiallization:${e.toString()}");
  }
  /// await native splash
  /// initialize   firebase
  /// initialize THE authentication ant notification


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: snackbarKey,
      title: 'Ultra Cart',
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home:const OnboardingScreen(),
    );
  }
}
