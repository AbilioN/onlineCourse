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
    apiKey: 'AIzaSyDThQQfDqxVG65ZRypkIpdbqVbeWletli4',
    appId: '1:1016559537650:web:23e339f0b67ed498cc2f6b',
    messagingSenderId: '1016559537650',
    projectId: 'shoppinglist-7b37f',
    authDomain: 'shoppinglist-7b37f.firebaseapp.com',
    storageBucket: 'shoppinglist-7b37f.appspot.com',
    measurementId: 'G-9K8LHSM035',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCwxsklcpDxzmSYjLn2vBP5BprAh552zAo',
    appId: '1:1016559537650:android:fa1681159ed80ab3cc2f6b',
    messagingSenderId: '1016559537650',
    projectId: 'shoppinglist-7b37f',
    storageBucket: 'shoppinglist-7b37f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCYwp-0WtVdmAHPL8NjwTcy1SQZphgHNWg',
    appId: '1:1016559537650:ios:4fbcabc9df109d75cc2f6b',
    messagingSenderId: '1016559537650',
    projectId: 'shoppinglist-7b37f',
    storageBucket: 'shoppinglist-7b37f.appspot.com',
    iosBundleId: 'com.example.another',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCYwp-0WtVdmAHPL8NjwTcy1SQZphgHNWg',
    appId: '1:1016559537650:ios:4fbcabc9df109d75cc2f6b',
    messagingSenderId: '1016559537650',
    projectId: 'shoppinglist-7b37f',
    storageBucket: 'shoppinglist-7b37f.appspot.com',
    iosBundleId: 'com.example.another',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDThQQfDqxVG65ZRypkIpdbqVbeWletli4',
    appId: '1:1016559537650:web:3de03196461c0dcccc2f6b',
    messagingSenderId: '1016559537650',
    projectId: 'shoppinglist-7b37f',
    authDomain: 'shoppinglist-7b37f.firebaseapp.com',
    storageBucket: 'shoppinglist-7b37f.appspot.com',
    measurementId: 'G-JTXCHVECNP',
  );
}
