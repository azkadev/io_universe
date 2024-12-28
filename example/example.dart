import 'package:io_universe/io_universe.dart';

void main() async {
  // Use 'dart:io' HttpClient API.
  final httpClient = HttpClient();
  final request = await httpClient.getUrl(Uri.parse('https://dart.dev'));
  final response = await request.close();
  print(response.toString());
  Platform;
}
