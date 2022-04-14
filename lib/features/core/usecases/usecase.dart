import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_trivia/features/core/error/failures.dart';
import 'package:tdd_trivia/features/number_trivia/domain/entities/number_trivia.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>?> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}
