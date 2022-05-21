import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:localization/l10n/l10n.dart';
import 'package:localization/provider/local_provider.dart';
import 'package:provider/provider.dart';
import 'package:stacked_themes/stacked_themes.dart';

class LanguageDetailsPage extends StatefulWidget {
  const LanguageDetailsPage({Key? key}) : super(key: key);

  @override
  State<LanguageDetailsPage> createState() => _LanguageDetailsPageState();
}

class _LanguageDetailsPageState extends State<LanguageDetailsPage> {
  List language = [
    'English',
    'عربى',
    'Deutsch',
    'Français',
    'हिन्दी',
    'Русский',
    'සිංහල',
    'தமிழ்',
    'український',
    '中国人',
  ];
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedindex = 0;
  late Timer _timer;
  late DateTime now;
  AppLocalizations? lan;
  var theme;
  String? locale;
  String? date;
  String? time;

  @override
  void initState() {
    super.initState();
    now = DateTime.now();
    _timer =
        Timer.periodic(const Duration(milliseconds: 500), (timer) => _update());
  }

  void _update() {
    setState(() {
      now = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    lan = AppLocalizations.of(context)!;
    getThemeManager(context).selectThemeAtIndex(int.parse(lan!.index));
    theme = Theme.of(context);
    locale = lan!.localeName;
    date = DateFormat.yMMMMd(locale).format(now);
    // time = DateFormat.jms(locale).format(now);
    time = DateFormat.Hms(locale).format(now);

    selectedLanguage() {
      showModalBottomSheet(
          context: context,
          builder: (builder) {
            return Container(
              height: 500,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    lan!.selectLanguage,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: ListView.builder(
                        itemCount: language.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              final provider = Provider.of<LocalProvider>(
                                  context,
                                  listen: false);
                              provider.setLocale(L10n.all[index]);
                              setState(() {
                                selectedindex = index;
                              });
                              Navigator.pop(context);
                            },
                            child: ListTile(
                              title: Text(language[index]),
                              trailing: selectedindex == index
                                  ? const Icon(Icons.done)
                                  : null,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          });
    }

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      key: scaffoldKey,
      appBar: AppBar(
        actionsIconTheme: theme.appBarTheme.actionsIconTheme,
        titleTextStyle: theme.textTheme.headline1,
        backgroundColor: theme.backgroundColor,
        centerTitle: true,
        title: Text(lan!.language),
        actions: [
          IconButton(
            onPressed: selectedLanguage,
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Text(
                'Country : ${lan!.country}',
                style: theme.textTheme.headline2,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Language : ${lan!.language}',
                style: theme.textTheme.headline3,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Date : $date',
                style: theme.textTheme.headline3,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Time : $time',
                style: theme.textTheme.headline3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
