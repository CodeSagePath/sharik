import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_aa.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_my.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'locales/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('es', 'ES'),
    Locale('fa'),
    Locale('fr'),
    Locale('gu'),
    Locale('gu', 'IN'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ml'),
    Locale('ml', 'IN'),
    Locale('my'),
    Locale('pl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('pt', 'PT'),
    Locale('ru'),
    Locale('si'),
    Locale('si', 'LK'),
    Locale('sk'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('aa'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('ur', 'PK'),
    Locale('zh'),
    Locale('zh', 'CN')
  ];

  /// No description provided for @homeSelectFile.
  ///
  /// In en, this message translates to:
  /// **'Select file'**
  String get homeSelectFile;

  /// No description provided for @homeSelectApp.
  ///
  /// In en, this message translates to:
  /// **'App'**
  String get homeSelectApp;

  /// No description provided for @homeSelectText.
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get homeSelectText;

  /// No description provided for @homeSelectGallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get homeSelectGallery;

  /// No description provided for @homeSelectTextTypeSomeText.
  ///
  /// In en, this message translates to:
  /// **'Type some text'**
  String get homeSelectTextTypeSomeText;

  /// No description provided for @homeHistory.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get homeHistory;

  /// No description provided for @homeReceiver.
  ///
  /// In en, this message translates to:
  /// **'Receiver'**
  String get homeReceiver;

  /// No description provided for @homeUpdates.
  ///
  /// In en, this message translates to:
  /// **'Updates'**
  String get homeUpdates;

  /// No description provided for @homeUpdatesTheLatestVersionIsInstalled.
  ///
  /// In en, this message translates to:
  /// **'The latest version is already installed'**
  String get homeUpdatesTheLatestVersionIsInstalled;

  /// No description provided for @homeUpdatesCurrentVersion.
  ///
  /// In en, this message translates to:
  /// **'Current version'**
  String get homeUpdatesCurrentVersion;

  /// No description provided for @homeUpdatesLatestVersion.
  ///
  /// In en, this message translates to:
  /// **'Latest version'**
  String get homeUpdatesLatestVersion;

  /// No description provided for @homeUpdatesChangelog.
  ///
  /// In en, this message translates to:
  /// **'Changelog'**
  String get homeUpdatesChangelog;

  /// No description provided for @selectAppSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get selectAppSearch;

  /// No description provided for @selectAppHideSystem.
  ///
  /// In en, this message translates to:
  /// **'Hide system apps'**
  String get selectAppHideSystem;

  /// No description provided for @selectAppHideNonLaunch.
  ///
  /// In en, this message translates to:
  /// **'Hide non-launchable apps'**
  String get selectAppHideNonLaunch;

  /// No description provided for @introGeneralDone.
  ///
  /// In en, this message translates to:
  /// **'DONE'**
  String get introGeneralDone;

  /// No description provided for @introGeneralNext.
  ///
  /// In en, this message translates to:
  /// **'NEXT'**
  String get introGeneralNext;

  /// No description provided for @generalClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get generalClose;

  /// No description provided for @generalSend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get generalSend;

  /// No description provided for @generalOpenInGithub.
  ///
  /// In en, this message translates to:
  /// **'Open on GitHub'**
  String get generalOpenInGithub;

  /// No description provided for @generalLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get generalLoading;

  /// No description provided for @intro1ConnectTitle.
  ///
  /// In en, this message translates to:
  /// **'CONNECT'**
  String get intro1ConnectTitle;

  /// No description provided for @intro1ConnectDescription.
  ///
  /// In en, this message translates to:
  /// **'Connect devices to the same Wi-Fi network. You can also use Mobile Hotspot'**
  String get intro1ConnectDescription;

  /// No description provided for @intro2SendTitle.
  ///
  /// In en, this message translates to:
  /// **'SEND'**
  String get intro2SendTitle;

  /// No description provided for @intro2SendDescription.
  ///
  /// In en, this message translates to:
  /// **'You can share images, videos, files, and text'**
  String get intro2SendDescription;

  /// No description provided for @intro3ReceiveTitle.
  ///
  /// In en, this message translates to:
  /// **'RECEIVE'**
  String get intro3ReceiveTitle;

  /// No description provided for @intro3ReceiveDescription.
  ///
  /// In en, this message translates to:
  /// **'Open the link on another device in any web browser. If you have Sharik of both devices, you can also use the receiver function'**
  String get intro3ReceiveDescription;

  /// No description provided for @intro4EverywhereTitle.
  ///
  /// In en, this message translates to:
  /// **'EVERYWHERE'**
  String get intro4EverywhereTitle;

  /// No description provided for @intro4EverywhereDescription.
  ///
  /// In en, this message translates to:
  /// **'Sharik is available for all major mobile and desktop platforms. Also, it is free, it has no ads, and its code is published online.\nClick here to learn more'**
  String get intro4EverywhereDescription;

  /// No description provided for @aboutInstalledVersion.
  ///
  /// In en, this message translates to:
  /// **'Installed version'**
  String get aboutInstalledVersion;

  /// No description provided for @aboutLatestVersion.
  ///
  /// In en, this message translates to:
  /// **'The latest version'**
  String get aboutLatestVersion;

  /// No description provided for @aboutLatestVersionUnknown.
  ///
  /// In en, this message translates to:
  /// **'unknown'**
  String get aboutLatestVersionUnknown;

  /// No description provided for @aboutCheckForUpdates.
  ///
  /// In en, this message translates to:
  /// **'Check for updates'**
  String get aboutCheckForUpdates;

  /// No description provided for @aboutUpdate.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get aboutUpdate;

  /// No description provided for @aboutNoUpdates.
  ///
  /// In en, this message translates to:
  /// **'No updates'**
  String get aboutNoUpdates;

  /// No description provided for @aboutOpenSourceLicenses.
  ///
  /// In en, this message translates to:
  /// **'Open source licenses'**
  String get aboutOpenSourceLicenses;

  /// No description provided for @aboutTrackingPolicy.
  ///
  /// In en, this message translates to:
  /// **'Tracking policy'**
  String get aboutTrackingPolicy;

  /// No description provided for @aboutContributors.
  ///
  /// In en, this message translates to:
  /// **'Contributors'**
  String get aboutContributors;

  /// No description provided for @aboutSharikText.
  ///
  /// In en, this message translates to:
  /// **'Sharik is completely free with its code published on GitHub.\nEveryone is welcomed to contribute :>'**
  String get aboutSharikText;

  /// No description provided for @aboutChangelog.
  ///
  /// In en, this message translates to:
  /// **'Changelog'**
  String get aboutChangelog;

  /// No description provided for @aboutLicenses.
  ///
  /// In en, this message translates to:
  /// **'Licenses'**
  String get aboutLicenses;

  /// No description provided for @aboutPrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get aboutPrivacyPolicy;

  /// No description provided for @sharingReceiver.
  ///
  /// In en, this message translates to:
  /// **'Receiver'**
  String get sharingReceiver;

  /// No description provided for @sharingNetworkInterfaces.
  ///
  /// In en, this message translates to:
  /// **'Network interfaces'**
  String get sharingNetworkInterfaces;

  /// No description provided for @sharingSelectNetworkInterface.
  ///
  /// In en, this message translates to:
  /// **'Select network interface'**
  String get sharingSelectNetworkInterface;

  /// No description provided for @sharingCopiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to Clipboard'**
  String get sharingCopiedToClipboard;

  /// No description provided for @sharingRecipientNeedsToBeConnected.
  ///
  /// In en, this message translates to:
  /// **'The recipient needs to be connected\nto the same network'**
  String get sharingRecipientNeedsToBeConnected;

  /// No description provided for @sharingOpenInBrowser.
  ///
  /// In en, this message translates to:
  /// **'Now open this link\nin any browser'**
  String get sharingOpenInBrowser;

  /// No description provided for @sharingConnectToWiFiOrHotspot.
  ///
  /// In en, this message translates to:
  /// **'Connect to Wi-Fi or set up a Mobile Hotspot'**
  String get sharingConnectToWiFiOrHotspot;

  /// No description provided for @fontAndika.
  ///
  /// In en, this message translates to:
  /// **'Andika'**
  String get fontAndika;

  /// No description provided for @fontComfortaa.
  ///
  /// In en, this message translates to:
  /// **'Comfortaa'**
  String get fontComfortaa;

  /// No description provided for @homeSend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get homeSend;

  /// No description provided for @homeReceive.
  ///
  /// In en, this message translates to:
  /// **'Receive'**
  String get homeReceive;

  /// No description provided for @homeFiles.
  ///
  /// In en, this message translates to:
  /// **'Files'**
  String get homeFiles;

  /// No description provided for @shareDownloadAllButton.
  ///
  /// In en, this message translates to:
  /// **'Download all (Will skip folders, Requires JavaScript enabled)'**
  String get shareDownloadAllButton;

  /// No description provided for @settingsAppearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearance;

  /// No description provided for @settingsPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get settingsPrivacy;

  /// No description provided for @settingsTracking.
  ///
  /// In en, this message translates to:
  /// **'Tracking'**
  String get settingsTracking;

  /// No description provided for @settingsTrackingAllow.
  ///
  /// In en, this message translates to:
  /// **'Allow'**
  String get settingsTrackingAllow;

  /// No description provided for @settingsTrackingDisable.
  ///
  /// In en, this message translates to:
  /// **'Disable'**
  String get settingsTrackingDisable;

  /// No description provided for @settingsTheme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsTheme;

  /// No description provided for @settingsThemeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get settingsThemeSystem;

  /// No description provided for @settingsThemeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settingsThemeLight;

  /// No description provided for @settingsThemeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settingsThemeDark;

  /// No description provided for @settingsDisableScreenTransitions.
  ///
  /// In en, this message translates to:
  /// **'Disable screen transitions'**
  String get settingsDisableScreenTransitions;

  /// No description provided for @settingsDisableBlur.
  ///
  /// In en, this message translates to:
  /// **'Disable blur'**
  String get settingsDisableBlur;

  /// No description provided for @settingsDisableTracking.
  ///
  /// In en, this message translates to:
  /// **'Disable tracking'**
  String get settingsDisableTracking;

  /// No description provided for @settingsTrackingDescription.
  ///
  /// In en, this message translates to:
  /// **'Sharik incorporates privacy-respecting tracking to learn more about the audience of the app. We are using the analytics data to plan new features, and prioritize tasks.\n\nThe collected information does not include IP address or any other identifying information.'**
  String get settingsTrackingDescription;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'de',
        'en',
        'es',
        'fa',
        'fr',
        'gu',
        'hi',
        'id',
        'it',
        'ja',
        'ml',
        'my',
        'pl',
        'pt',
        'ru',
        'si',
        'sk',
        'ta',
        'te',
        'th',
        'aa',
        'tr',
        'uk',
        'ur',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'es':
      {
        switch (locale.countryCode) {
          case 'ES':
            return AppLocalizationsEsEs();
        }
        break;
      }
    case 'gu':
      {
        switch (locale.countryCode) {
          case 'IN':
            return AppLocalizationsGuIn();
        }
        break;
      }
    case 'ml':
      {
        switch (locale.countryCode) {
          case 'IN':
            return AppLocalizationsMlIn();
        }
        break;
      }
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
          case 'PT':
            return AppLocalizationsPtPt();
        }
        break;
      }
    case 'si':
      {
        switch (locale.countryCode) {
          case 'LK':
            return AppLocalizationsSiLk();
        }
        break;
      }
    case 'ur':
      {
        switch (locale.countryCode) {
          case 'PK':
            return AppLocalizationsUrPk();
        }
        break;
      }
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fr':
      return AppLocalizationsFr();
    case 'gu':
      return AppLocalizationsGu();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ml':
      return AppLocalizationsMl();
    case 'my':
      return AppLocalizationsMy();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'si':
      return AppLocalizationsSi();
    case 'sk':
      return AppLocalizationsSk();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'aa':
      return AppLocalizationsAa();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
