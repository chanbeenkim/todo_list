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
    apiKey: 'AIzaSyBml8CalcVKgLec6IjPopqa6OjctTEmGLU',
    appId: '1:254850661897:web:351921e0715db4edbc82d8',
    messagingSenderId: '254850661897',
    projectId: 'todo-firestore-6e4aa',
    authDomain: 'todo-firestore-6e4aa.firebaseapp.com',
    storageBucket: 'todo-firestore-6e4aa.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA6hrzuYHcqpXzAEdEv7bd2tq_v72ZKq5c',
    appId: '1:254850661897:android:52546e23e4199b49bc82d8',
    messagingSenderId: '254850661897',
    projectId: 'todo-firestore-6e4aa',
    storageBucket: 'todo-firestore-6e4aa.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBFK4jGp65Aupb24GUeHJSIXZIxgzlzPLs',
    appId: '1:254850661897:ios:96d7607372b672cabc82d8',
    messagingSenderId: '254850661897',
    projectId: 'todo-firestore-6e4aa',
    storageBucket: 'todo-firestore-6e4aa.appspot.com',
    iosClientId: '254850661897-2uvfvqt02a4jvi1tdacg4it40ct8m9gl.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoList',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBFK4jGp65Aupb24GUeHJSIXZIxgzlzPLs',
    appId: '1:254850661897:ios:37d9f0654bbacdf2bc82d8',
    messagingSenderId: '254850661897',
    projectId: 'todo-firestore-6e4aa',
    storageBucket: 'todo-firestore-6e4aa.appspot.com',
    iosClientId: '254850661897-fvok5jbiqn3f7orsqntjbrct0st1vp15.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoList.RunnerTests',
  );
}