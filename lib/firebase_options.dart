// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCAUN6HIKKKWtKYeo1mDcGZATACZt-GruA',
    appId: '1:318353239677:web:fd4f5d0813e80332180b14',
    messagingSenderId: '318353239677',
    projectId: 'digitalserenity-8b061',
    authDomain: 'digitalserenity-8b061.firebaseapp.com',
    storageBucket: 'digitalserenity-8b061.appspot.com',
    measurementId: 'G-XZFPRZ65JB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAP-xPjA5DQNUKqll2BS47shO34CQXBTJQ',
    appId: '1:318353239677:android:17d5e2d299e24998180b14',
    messagingSenderId: '318353239677',
    projectId: 'digitalserenity-8b061',
    storageBucket: 'digitalserenity-8b061.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAIAxCEG1kKo505P3Lnj0wGJMvhM9ndBzc',
    appId: '1:318353239677:ios:fe72c1219b361283180b14',
    messagingSenderId: '318353239677',
    projectId: 'digitalserenity-8b061',
    storageBucket: 'digitalserenity-8b061.appspot.com',
    iosBundleId: 'com.example.digitalserenity',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAIAxCEG1kKo505P3Lnj0wGJMvhM9ndBzc',
    appId: '1:318353239677:ios:fe72c1219b361283180b14',
    messagingSenderId: '318353239677',
    projectId: 'digitalserenity-8b061',
    storageBucket: 'digitalserenity-8b061.appspot.com',
    iosBundleId: 'com.example.digitalserenity',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCAUN6HIKKKWtKYeo1mDcGZATACZt-GruA',
    appId: '1:318353239677:web:38fe561c86848d20180b14',
    messagingSenderId: '318353239677',
    projectId: 'digitalserenity-8b061',
    authDomain: 'digitalserenity-8b061.firebaseapp.com',
    storageBucket: 'digitalserenity-8b061.appspot.com',
    measurementId: 'G-PWHYHLS2WG',
  );
}
