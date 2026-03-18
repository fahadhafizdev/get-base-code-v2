import 'package:flutter_dotenv/flutter_dotenv.dart';

String baseUrl = dotenv.env['APP_ENV'] == 'dev'
    ? dotenv.env['API_BASE_URL_DEV']!
    : dotenv.env['API_BASE_URL_PROD']!;
