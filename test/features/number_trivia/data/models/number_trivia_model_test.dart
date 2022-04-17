import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_trivia/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:tdd_trivia/features/number_trivia/domain/entities/number_trivia.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: "Test Text");

  test('should be subclass of NumberTrivia Entity', () {
    expect(tNumberTriviaModel, isA<NumberTriviaModel>());
  });
  group('fromJson', () {
    test('should return a valid json model when the json number is an integer',
        () {
      final Map<String, dynamic> jsonMap = json.decode(fixtures('trivia.json'));
      final result = NumberTriviaModel.fromJson(jsonMap);
      expect(result, tNumberTriviaModel);
    });

    test(
        'should return a valid json model when the json number is regarded as double',
        () {
      final Map<String, dynamic> jsonMap =
          json.decode(fixtures('trivia_double.json'));
      final result = NumberTriviaModel.fromJson(jsonMap);
      expect(result, tNumberTriviaModel);
    });
  });
  group('toJson', () {
    test('should return a Json map containing the proper data', () {
      final result = tNumberTriviaModel.toJson();
      final expectedMap = {'text': "Test Text", 'number': 1};
      expect(result, expectedMap);
    });
  });
}
