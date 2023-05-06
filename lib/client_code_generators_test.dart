import 'package:client_code_generators/client_code_generators.dart';

String? request() {
  String? resultSnippet;
  final request =
        Request('GET', 'https://jsonplaceholder.typicode.com/users');

    var options = {
      'trimRequestBody': true,
      'indentType': 'Space',
      'indentCount': 2,
      'requestTimeout': 0,
      'followRedirect': true,
      'includeBoilerplate': true
    };
    var language = 'Dart';
    var variant = 'http';
    
    convert(language, variant, request, options, (error, snippet) {
      resultSnippet = snippet;
    });
  return resultSnippet;
}
