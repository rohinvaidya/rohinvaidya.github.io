import 'dart:convert';
import 'dart:io';
import 'package:devfolio/models/data.dart';
import 'package:devfolio/pages/home.dart';
import 'package:jaspr/server.dart';

// Server-side component for loading data
class DataLoader extends AsyncStatelessComponent {
  @override
  Stream<Component> build(BuildContext context) async* {
    // Load data from the JSON file (server-side only)
    final String fileResponse =
        File('${Directory.current.path}/web/data/data.json').readAsStringSync();
    final Map<String, dynamic> raw =
        jsonDecode(fileResponse) as Map<String, dynamic>;

    final data = Data.fromJson(raw);

    // Pass the loaded data to the client component
    yield Home(data: data);
  }
}
