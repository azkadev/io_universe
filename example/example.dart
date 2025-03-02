import 'package:io_universe/io_universe.dart';

void main(List<String> args) {
  Directory directory = Directory("path");
  directory.createSync(recursive: true);
  exit(0);
}
