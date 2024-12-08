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
    apiKey: 'AIzaSyB973CLvhayYQ97SDJTpNoNd0I_Lax3BKI',
    appId: '1:219048733826:web:b72971aac26b1c54d5989b',
    messagingSenderId: '219048733826',
    projectId: 'flash-chat-8c063',
    authDomain: 'flash-chat-8c063.firebaseapp.com',
    storageBucket: 'flash-chat-8c063.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAbXwIxioO1E5p0ayOk_r-eqK_-uvDu8LI',
    appId: '1:219048733826:android:582caa6415a5881ed5989b',
    messagingSenderId: '219048733826',
    projectId: 'flash-chat-8c063',
    storageBucket: 'flash-chat-8c063.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDRcAZUTU_yFKszFxpzUFVmr0swbjSn7io',
    appId: '1:219048733826:ios:59bbb5276b9e76acd5989b',
    messagingSenderId: '219048733826',
    projectId: 'flash-chat-8c063',
    storageBucket: 'flash-chat-8c063.firebasestorage.app',
    iosBundleId: 'com.LeandroRusso.flashChatFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDRcAZUTU_yFKszFxpzUFVmr0swbjSn7io',
    appId: '1:219048733826:ios:167d2a49fcab4f93d5989b',
    messagingSenderId: '219048733826',
    projectId: 'flash-chat-8c063',
    storageBucket: 'flash-chat-8c063.firebasestorage.app',
    iosBundleId: 'com.example.flashChatFlutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB973CLvhayYQ97SDJTpNoNd0I_Lax3BKI',
    appId: '1:219048733826:web:b5f14c470a0069ced5989b',
    messagingSenderId: '219048733826',
    projectId: 'flash-chat-8c063',
    authDomain: 'flash-chat-8c063.firebaseapp.com',
    storageBucket: 'flash-chat-8c063.firebasestorage.app',
  );
}
