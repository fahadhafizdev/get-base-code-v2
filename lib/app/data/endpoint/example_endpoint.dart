import 'package:get_base_code_v2/app/data/endpoint/base_url.dart';

class ExampleEndPoint {
  static String login = "$baseUrl/collector/auth/login";
  static String getProfile = "$baseUrl/collector/auth/me";
  static String getCustomers = "$baseUrl/collector/customer";
  static String getCustomer(int id) => "$baseUrl/collector/customer/$id";
  static String listPayment = '$baseUrl/collector/payment';
}
