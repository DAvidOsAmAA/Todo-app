import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo/tabs/home_screen.dart';
import 'package:todo/tabs/settings/setting_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: MyApp(),
    create: (_) => settingProvider(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    settingProvider settingsProvider = Provider.of<settingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: settingsProvider.themeMode,
      theme: Apptheme.lightTheme,
      darkTheme: Apptheme.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(settingsProvider.languageCode),
      routes: {HomeScreen.routeName: (_) => HomeScreen()},
      initialRoute: HomeScreen.routeName,
    );
  }
}
