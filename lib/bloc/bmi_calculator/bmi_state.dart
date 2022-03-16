part of 'bmi_cubit.dart';

@immutable
abstract class BmiState {}

class BmiInitial extends BmiState {}
class CalculateBmiState extends BmiState {}
class IncrementHeightState extends BmiState {}
class IncrementWeightState extends BmiState {}
class IncrementAgeState extends BmiState {}
class DecrementHeightState extends BmiState {}
class DecrementWeightState extends BmiState {}
class DecrementAgeState extends BmiState {}
class BMIValueState extends BmiState {}

