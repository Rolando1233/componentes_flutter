// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAc87i1PTAuek7ukaRSwOAtkok03rHBQxw',
    appId: '1:226265016244:web:a75b972a38eb57a643f4e1',
    messagingSenderId: '226265016244',
    projectId: 'com5c-24',
    authDomain: 'com5c-24.firebaseapp.com',
    storageBucket: 'com5c-24.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAzPVSvbb9Nm--vYpmqZB4fnDoZnUegSg4',
    appId: '1:226265016244:android:989a4c4d575c917243f4e1',
    messagingSenderId: '226265016244',
    projectId: 'com5c-24',
    storageBucket: 'com5c-24.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCke2CvxMGoO43TYSdsChOq-PQBWKrbM00',
    appId: '1:226265016244:ios:a0f20fa3cd55b45c43f4e1',
    messagingSenderId: '226265016244',
    projectId: 'com5c-24',
    storageBucket: 'com5c-24.appspot.com',
    iosBundleId: 'com.example.practica3',
  );
}
