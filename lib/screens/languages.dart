import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../components/buttons.dart';
import '../components/grid_view.dart';
import '../components/logo.dart';
import '../components/page_router.dart';
import '../conf.dart';
import '../gen/languages.dart';
import '../logic/language.dart';

// review: done

class LanguagePickerScreen extends StatelessWidget {
  final _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: _globalKey,
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          final set = context.read<LanguageManager>().isLanguageSet;
          if (set) {
            SharikRouter.navigateTo(
              _globalKey,
              Screens.home,
              RouteDirection.right,
            );
          }
        },
        child: Scaffold(
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            children: [
              const SafeArea(
                bottom: false,
                left: false,
                right: false,
                child: SizedBox(
                  height: 22,
                ),
              ),
              Hero(tag: 'icon', child: SharikLogo()),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Select the language\nyou are familiar with',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Comfortaa',
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 24),
              LayoutBuilder(
                builder: (context, constraints) {
                  return GridView.builder(
                    gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                      crossAxisCount: constraints.maxWidth < 720 ? 1 : 2,
                      crossAxisSpacing: 18,
                      mainAxisSpacing: 18,
                      height: 80,
                    ),
                    primary: false,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: languageListGen.length,
                    itemBuilder: (BuildContext context, int index) =>
                        LanguageButton(languageListGen[index], () {
                      final set = context.read<LanguageManager>().isLanguageSet;

                      context.read<LanguageManager>().language =
                          languageListGen[index];

                      if (set) {
                        SharikRouter.navigateTo(
                          _globalKey,
                          Screens.home,
                          RouteDirection.right,
                        );
                      } else {
                        SharikRouter.navigateTo(
                          _globalKey,
                          Screens.intro,
                          RouteDirection.right,
                        );
                      }
                    }),
                  );
                },
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class LanguageButton extends StatelessWidget {
  final Language _language;
  final Function() _onClick;

  const LanguageButton(this._language, this._onClick);

  @override
  Widget build(BuildContext context) {
    // You may need to map locale to flag asset if not available in l10n
    final flagAsset = 'assets/flags_gen/${_language.locale.languageCode}.svg';
    // If you have a mapping, use it here
    // Example: if (_language.locale.languageCode == 'en') flagAsset = ...
    return PrimaryButton(
      height: 80,
      onClick: _onClick,
      text: _language.nameLocal,
      secondaryIcon: Opacity(
        opacity: 0.4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SvgPicture.asset(
            flagAsset,
            height: 50,
          ),
        ),
      ),
      font: 'Andika', // Or use a mapping if needed
    );
  }
}
