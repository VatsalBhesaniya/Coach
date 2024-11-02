import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static String? get firebaseApiKey => dotenv.env['FIREBASE_API_KEY'];
  static String? get firebaseProjectId => dotenv.env['FIREBASE_PROJECT_ID'];

  static Future<void> load(String env) async {
    await dotenv.load(fileName: 'lib/config/env/$env.env');
  }
}
