import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? frText = '',
  }) =>
      [enText, frText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Splash
  {
    'ftlk10x5': {
      'en': 'Med',
      'fr': '',
    },
    'xhhiwnms': {
      'en': 'Reminders',
      'fr': '',
    },
    '31v5xhd9': {
      'en': 'Découvrir',
      'fr': 'Découvrir',
    },
    '4wjpihri': {
      'en': 'Déjà membre ? ',
      'fr': 'Déjà inscrit ?',
    },
    '8lsxlbi9': {
      'en': 'Se connecter',
      'fr': 'Se connecter',
    },
    '98afmct9': {
      'en': 'Home',
      'fr': 'Accueil',
    },
  },
  // SignIn
  {
    's2vy008c': {
      'en': 'Sign In',
      'fr': '',
    },
    'j3xrk9jj': {
      'en': 'Email',
      'fr': '',
    },
    'enkcecei': {
      'en': 'tsmith@email.com',
      'fr': '',
    },
    '55ye3cf8': {
      'en': 'Password',
      'fr': '',
    },
    'lhxezft7': {
      'en': 'password',
      'fr': '',
    },
    '2xnd42jl': {
      'en': 'Email is required.',
      'fr': '',
    },
    'dj1rve5w': {
      'en': 'Please choose an option from the dropdown',
      'fr': '',
    },
    '9tyhbmdw': {
      'en': 'Passsword is required.',
      'fr': '',
    },
    '6fhsm0au': {
      'en': 'Please choose an option from the dropdown',
      'fr': '',
    },
    '3lhh97lc': {
      'en': 'Sign In',
      'fr': '',
    },
    'ikxbufr4': {
      'en': 'I don\'t remember my password',
      'fr': '',
    },
    '56rqthk3': {
      'en': 'Don\'t have an account yet?',
      'fr': '',
    },
    'm18p91z9': {
      'en': 'Create Account',
      'fr': '',
    },
    'nnh5sv0f': {
      'en': 'Home',
      'fr': '',
    },
  },
  // Onboarding_Slideshow
  {
    'qaffj8g9': {
      'en': 'Scannes ton ordonnance',
      'fr': '',
    },
    'dvq8k6lg': {
      'en':
          'À l\'aide de l\'appareil photo de ton téléphone, scannes simplement ton ordonnance.',
      'fr': '',
    },
    'lt12kdpa': {
      'en': 'Zéro prises de tête',
      'fr': '',
    },
    'afqq2gek': {
      'en':
          'Reçois automatiquement des rappels de prise de médications. Sois-prévenu en cas de conflits entre des médicaments, ou des éventuels effets secondaires',
      'fr': '',
    },
    'tmze9jvy': {
      'en': 'Un suivi à domicile',
      'fr': '',
    },
    '9yy6vzec': {
      'en':
          'Lors de la prise de médicamements, un bilan rapide est effectué, pour faciliter le suivi avec son médecin.',
      'fr': '',
    },
    'ad9tk3z8': {
      'en': 'Suivant',
      'fr': '',
    },
    '6drb072m': {
      'en': 'Home',
      'fr': '',
    },
  },
  // Onboarding_CreateAccount
  {
    'd9kxnl4m': {
      'en': 'Créer un compte',
      'fr': '',
    },
    'dbt4iqx9': {
      'en': 'Nom complet',
      'fr': '',
    },
    '23mqq1h9': {
      'en': 'Email',
      'fr': '',
    },
    '4hfqujz1': {
      'en': 'Mot de passe',
      'fr': '',
    },
    'm4lppm7g': {
      'en': 'Full name is required.',
      'fr': '',
    },
    'lk9f96e1': {
      'en': 'Please choose an option from the dropdown',
      'fr': '',
    },
    'iyd781wa': {
      'en': 'Email is required.',
      'fr': '',
    },
    '3b93m7va': {
      'en': 'Please choose an option from the dropdown',
      'fr': '',
    },
    'dtyrqbhc': {
      'en': 'Password is required.',
      'fr': '',
    },
    '1woik12o': {
      'en': 'Please choose an option from the dropdown',
      'fr': '',
    },
    'dq9psavc': {
      'en': 'Créer un compte',
      'fr': '',
    },
    '6ongsqy2': {
      'en': 'En créant un compte, vous acceptez les ',
      'fr': '',
    },
    '2pblnw75': {
      'en': 'conditions générales d\'utilisation',
      'fr': '',
    },
    'bhixtav8': {
      'en': '.',
      'fr': '',
    },
    'v86fzc5i': {
      'en': 'Home',
      'fr': '',
    },
  },
  // Profil
  {
    'c3kv9o0d': {
      'en': 'Merci de nous soutenir ! ',
      'fr': '',
    },
    'kgh51cuf': {
      'en': 'Nous apprécions la confiance que vous portez dans MedReminders.',
      'fr': '',
    },
    'ircptpp9': {
      'en': 'Modifier le profil',
      'fr': '',
    },
    'gv8a91o1': {
      'en': 'Se déconnecter',
      'fr': '',
    },
    'upjxgphb': {
      'en': 'Profile',
      'fr': '',
    },
  },
  // EditProfile
  {
    'h5o4ato9': {
      'en': 'Modifier le profil',
      'fr': '',
    },
    '3o2812gv': {
      'en': 'Nom',
      'fr': '',
    },
    'd3n4xbcd': {
      'en': '',
      'fr': '',
    },
    'ect2f8wa': {
      'en': '',
      'fr': '',
    },
    'hr2y9oa3': {
      'en': 'Mot de passe oublié',
      'fr': '',
    },
    'q3h3nqv8': {
      'en': 'Supprimer mon compte',
      'fr': '',
    },
    'w5k5wmw2': {
      'en': 'Home',
      'fr': '',
    },
  },
  // ForgotPassword
  {
    'cm13q2us': {
      'en': 'Forgot password',
      'fr': '',
    },
    'dg7yzmtl': {
      'en': 'We\'ll send you an email to reset your password.',
      'fr': '',
    },
    '4clpr9je': {
      'en': 'Email',
      'fr': '',
    },
    'avd910a8': {
      'en': '',
      'fr': '',
    },
    'ngnxh2hm': {
      'en': '',
      'fr': '',
    },
    '6pzz9d4w': {
      'en': 'Email is required.',
      'fr': '',
    },
    'sctqhtpn': {
      'en': 'Please choose an option from the dropdown',
      'fr': '',
    },
    '41xxuolz': {
      'en': 'Reset Password',
      'fr': '',
    },
    'qoxde1fc': {
      'en': 'Home',
      'fr': '',
    },
  },
  // addTreatment
  {
    'l19pc8mi': {
      'en': 'Étape 1',
      'fr': '',
    },
    'p53ob5gg': {
      'en': 'De quelle manière ?',
      'fr': '',
    },
    'ang80oi9': {
      'en':
          'Vous pouvez choisir de scanner une ordonnance, ou de saisir les informations manuellement',
      'fr': '',
    },
    's8j52uke': {
      'en': 'Scan d\'ordonnance (bientôt disponible)',
      'fr': '',
    },
    'zhgm294v': {
      'en': 'Saisir manuellement',
      'fr': '',
    },
    'noaljzvw': {
      'en': 'Étape 2',
      'fr': '',
    },
    '8nxnr2ox': {
      'en': 'Les informations',
      'fr': '',
    },
    'qoc7k2p8': {
      'en': '',
      'fr': '',
    },
    '0zfb7t1j': {
      'en': 'Nom',
      'fr': '',
    },
    'uo7ciqrd': {
      'en': '',
      'fr': '',
    },
    '923a72bp': {
      'en': 'Description',
      'fr': '',
    },
    'pvndwmjj': {
      'en': '',
      'fr': '',
    },
    'oq5xd8vx': {
      'en': 'Posologie',
      'fr': '',
    },
    'lmapcnta': {
      'en': 'Début',
      'fr': '',
    },
    'pnnfhr6i': {
      'en': 'Fin',
      'fr': '',
    },
    'ft20w4oc': {
      'en': 'Rappel de posologie ?',
      'fr': '',
    },
    '7id4pino': {
      'en': 'Suivant',
      'fr': '',
    },
    'pdfgu58m': {
      'en': 'Ajouter un traitement',
      'fr': '',
    },
    '3nhgmzgy': {
      'en': 'Home',
      'fr': '',
    },
  },
  // Accueil
  {
    '0a826vhb': {
      'en': 'Mes traitements',
      'fr': '',
    },
    'gyglcmdl': {
      'en': 'Ajouter un traitement',
      'fr': '',
    },
    'mw04es5j': {
      'en': 'Home',
      'fr': '',
    },
  },
  // DetailsTreatment
  {
    'tyr95kop': {
      'en': ' fois par jour.',
      'fr': '',
    },
    'mvr0zf6e': {
      'en': 'Notifications',
      'fr': '',
    },
    'lfv4zehg': {
      'en': 'Soyez notifié au moment de prendre vos médicaments.',
      'fr': '',
    },
    '51u174ap': {
      'en': 'Home',
      'fr': '',
    },
  },
  // Miscellaneous
  {
    'r1nvfjgp': {
      'en':
          'MedReminders doit pouvoir vous envoyer des notifications, afin de vous rappeler de prendre vos médicaments',
      'fr': '',
    },
    'h6dpezwh': {
      'en': 'MedReminders utilise la caméra pour scanner les ordonnances',
      'fr': '',
    },
    'sgqqgscx': {
      'en': '',
      'fr': '',
    },
    'n92be62l': {
      'en': '',
      'fr': '',
    },
    '1ecm4fwf': {
      'en': '',
      'fr': '',
    },
    'qsk3eku9': {
      'en': '',
      'fr': '',
    },
    'q8rm2xva': {
      'en': '',
      'fr': '',
    },
    'uzlgqtgw': {
      'en': '',
      'fr': '',
    },
    's9jc94lf': {
      'en': '',
      'fr': '',
    },
    'ch4pfpm9': {
      'en': '',
      'fr': '',
    },
    'avz1nxja': {
      'en': '',
      'fr': '',
    },
    'brfdt91b': {
      'en': '',
      'fr': '',
    },
    'lxfshmh2': {
      'en': '',
      'fr': '',
    },
    'ehkwxexf': {
      'en': '',
      'fr': '',
    },
    'qhs01vlu': {
      'en': '',
      'fr': '',
    },
    'alnuvjrk': {
      'en': '',
      'fr': '',
    },
    'g9d4iu6q': {
      'en': '',
      'fr': '',
    },
    'kr9uvcb1': {
      'en': '',
      'fr': '',
    },
    '0waui4s1': {
      'en': '',
      'fr': '',
    },
    'tkveptrz': {
      'en': '',
      'fr': '',
    },
    '598ndygu': {
      'en': '',
      'fr': '',
    },
    'c5ztd9b8': {
      'en': '',
      'fr': '',
    },
    'zkrbpdro': {
      'en': '',
      'fr': '',
    },
    'jd2pv8zc': {
      'en': '',
      'fr': '',
    },
    'oy9r5abg': {
      'en': '',
      'fr': '',
    },
    'hmzlukad': {
      'en': '',
      'fr': '',
    },
    'ymqqblgd': {
      'en': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
