import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import './l10n/app_localizations.dart';
import 'gen/languages.dart';
import 'logic/language.dart';
import 'logic/theme.dart';
import 'screens/loading.dart';
import 'utils/material_ink_well.dart';

// todo before migrating locales:
// - design review (colors, spacing, animations, etc)
// - accessibility
// - create sharing intent (android, ios, maybe desktop?)
// - code cleanup & to-do review
// - review imports (cupertino, material, etc -> use only foundation or widgets)
// - cleanup assets & fonts
// - check fonts for usage
// - font licenses
// - get rid of all prints
// - add an icon to the android notifications bar

// todo review variables' access scope
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageManager()),
        ChangeNotifierProvider(create: (_) => ThemeManager()),
        // ChangeNotifierProvider(create: (_) => null)
      ],
      child: SharikApp(),
    ),
  );
}

class SharikApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: context.watch<ThemeManager>().brightness == Brightness.dark
          ? SystemUiOverlayStyle.light.copyWith(
              statusBarColor: const Color.fromRGBO(33, 33, 33, 0.4),
              systemNavigationBarColor: Colors.deepPurple.shade100,
              // systemNavigationBarDividerColor: Colors.deepPurple.shade100,
              systemNavigationBarIconBrightness: Brightness.dark,
            )
          : SystemUiOverlayStyle.dark.copyWith(
              statusBarColor: const Color.fromRGBO(245, 245, 245, 0.6),
              systemNavigationBarColor: Colors.deepPurple.shade100,
              // systemNavigationBarDividerColor: Colors.deepPurple.shade100,
              systemNavigationBarIconBrightness: Brightness.dark,
            ),
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: BouncingScrollBehavior(),
            child: child!,
          );
        },
        // builder: DevicePreview.appBuilder, //
        locale: context.watch<LanguageManager>().language.locale,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: languageListGen.map((e) => e.locale),
        title: 'Sharik',
        theme: ThemeData(
          splashFactory: MaterialInkSplash.splashFactory,
          brightness: Brightness.light,
          inputDecorationTheme: const InputDecorationTheme(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(33, 33, 33, 0.8),
                width: 2,
              ),
            ),
          ),
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Colors.grey.shade600,
            selectionHandleColor: const Color.fromRGBO(238, 238, 238, 0.9),
            selectionColor: const Color.fromRGBO(237, 231, 246, 0.6),
          ),

          // sharik top icon color
          colorScheme: ColorScheme.light(
            primary: Colors.deepPurple.shade500,
            secondary: Colors.deepPurple.shade500,
          ),

          // primarySwatch: Colors.deepPurple,

          // right click selection color
          cardColor: const Color.fromRGBO(238, 238, 238, 0.9),

          // color of the button on the default background
          dividerColor: Colors.deepPurple.shade400,

          // about card color
          // buttonColor: Colors.deepPurple.shade50.withOpacity(0.6),
        ),
        darkTheme: ThemeData(
          splashFactory: MaterialInkSplash.splashFactory,

          brightness: Brightness.dark,
          inputDecorationTheme: const InputDecorationTheme(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(251, 250, 255, 0.8),
                width: 2,
              ),
            ),
          ),

          // primarySwatch: Colors.grey,

          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Colors.deepPurple.shade50,
            selectionHandleColor: const Color.fromRGBO(196, 181, 253, 0.9),
            selectionColor: const Color.fromRGBO(251, 250, 255, 0.4),
          ),

          // sharik top icon color
          colorScheme: ColorScheme.dark(
            primary: Colors.deepPurple.shade300,
            secondary: Colors.deepPurple.shade300,
          ),

          // right click selection color
          cardColor: const Color.fromRGBO(147, 51, 234, 0.9),

          // color of the button on the default background
          dividerColor: Colors.deepPurple.shade50,

          // about card color
          // buttonColor: Colors.deepPurple.shade50.withOpacity(0.6),
        ),
        themeMode: context.watch<ThemeManager>().theme,
        home: LoadingScreen(),
      ),
    );
  }
}
