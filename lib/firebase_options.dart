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
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
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
    apiKey: 'AIzaSyCELjAoKN7w5zNKzWugjEPcvsHD_zIkWss',
    appId: '1:496195824535:web:a8c1f37c855c2e992332d2',
    messagingSenderId: '496195824535',
    projectId: 'flutter-firebase-64220',
    authDomain: 'flutter-firebase-64220.firebaseapp.com',
    storageBucket: 'flutter-firebase-64220.appspot.com',
    measurementId: 'G-TFJL4WE46D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDKoeTu0cx4otgSQDayhz3SCZMuZjTFvBg',
    appId: '1:496195824535:android:dfc72558bbb77f8c2332d2',
    messagingSenderId: '496195824535',
    projectId: 'flutter-firebase-64220',
    storageBucket: 'flutter-firebase-64220.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCpcM6dNFgriB7sIUn6qL2t7JwVKWp-7_s',
    appId: '1:496195824535:ios:1444db88f1d7a4742332d2',
    messagingSenderId: '496195824535',
    projectId: 'flutter-firebase-64220',
    storageBucket: 'flutter-firebase-64220.appspot.com',
    iosClientId: '496195824535-lgt97s18gs33brqvifhrojvifgal0n3a.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseExample',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCpcM6dNFgriB7sIUn6qL2t7JwVKWp-7_s',
    appId: '1:496195824535:ios:1444db88f1d7a4742332d2',
    messagingSenderId: '496195824535',
    projectId: 'flutter-firebase-64220',
    storageBucket: 'flutter-firebase-64220.appspot.com',
    iosClientId: '496195824535-lgt97s18gs33brqvifhrojvifgal0n3a.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseExample',
  );
}
