import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class NumberTrivia extends Equatable {
  @override
  List<Object> get props => [text, number];

  final String text;
  final int number;
  NumberTrivia({required this.number, required this.text});
}
