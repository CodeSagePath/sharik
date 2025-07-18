import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../gen/languages.dart';

class Language {
  final String name;
  final String nameLocal;
  final Locale locale;
  final String? contributorName;
  final String? contributorLink;

  const Language({
    required this.name,
    required this.nameLocal,
    required this.locale,
    this.contributorName,
    this.contributorLink,
  });
}

// todo review ChangeNotifier
class LanguageManager extends ChangeNotifier {
  Language _language =
      languageListGen.firstWhere((element) => element.name == 'english');

  bool _languageSet = false;

  bool get isLanguageSet => _languageSet;

  Language get language => _language;

  set language(Language language) {
    _language = language;
    Hive.box<String>('strings').put('language', _language.name);

    notifyListeners();
  }

  void init() {
    final l = Hive.box<String>('strings').get('language', defaultValue: null);

    if (l != null) {
      _language = languageListGen.firstWhere((element) => element.name == l);
      _languageSet = true;
      notifyListeners();
      return;
    }

    final locales = WidgetsBinding.instance.platformDispatcher.locales;
    locales.insert(0, WidgetsBinding.instance.platformDispatcher.locale);

    for (final locale in locales) {
      final language =
          languageListGen.where((element) => element.locale == locale);

      if (language.isNotEmpty) {
        _language = language.first;
        break;
      }
    }

    notifyListeners();
  }
}
