import 'package:dartz/dartz.dart';
import 'package:tdd_trivia/features/core/error/failures.dart';
import 'package:tdd_trivia/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure,NumberTrivia>>? getConcreteNumberTrivia(int? number);
  Future<Either<Failure,NumberTrivia>>? getRandomNumberTrivia();
}
