import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization/l10n/l10n.dart';
import 'package:localization/page/language_details_page.dart';
import 'package:localization/provider/local_provider.dart';
import 'package:localization/theme_list.dart';
import 'package:provider/provider.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future main() async {
  await ThemeManager.initialise();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LocalProvider(),
      builder: (context, child) {
        final provider = Provider.of<LocalProvider>(context);
        return ThemeBuilder(
          themes: getThemes(),
          builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
                locale: provider.locale,
                debugShowCheckedModeBanner: false,
                title: 'Localication',
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: L10n.all,
                theme: regularTheme,
                darkTheme: darkTheme,
                themeMode: themeMode,
                home: const LanguageDetailsPage(),
              ),
        );
      }
    );
  }
}
