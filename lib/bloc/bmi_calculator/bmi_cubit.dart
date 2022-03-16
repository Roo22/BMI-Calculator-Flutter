import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(BmiInitial());
  static BmiCubit get(context)=>BlocProvider.of(context);
  double height=120;
  double weight=40;
  double BMI=0;
  int age =0;
 late String value;
  void Bmi()
  {
    height = height/ 100;
    BMI= weight/(pow(height, 2));
    BMI = double.parse((BMI).toStringAsFixed(2));
    emit(CalculateBmiState());

  }
  void IncrementH()
  {
    height++;
    emit(IncrementHeightState());
  }
  void IncrementW()
  {
    weight++;
    emit(IncrementWeightState());

  }
  void DecrementH()
  {
    height--;
    emit(DecrementHeightState());
  }
  void DecrementW()
  {
    weight--;
    emit(DecrementWeightState());
  }
  void IncrementAge()
  {
    age++;
    emit(IncrementAgeState());

  }
  void DecrementAge()
  {
    age--;
    emit(DecrementAgeState());
  }
  void BmiValue(){
    if(BMI < 18.5)
      {
        value = 'Under Weight';
      }
    else if (BMI <= 24.9)
      {
        value = 'Normal Weight';
      }
      else if(BMI <=29.9)
        {
          value = 'Over Weight';
        }
      else{
        value = 'Obese';
    }
      emit(BMIValueState());
  }

}
