import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_session5/views/home_view.dart';
import '../bloc/bmi_calculator/bmi_cubit.dart';
class AnswerView extends StatelessWidget {
  const AnswerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body:  BlocConsumer<BmiCubit,BmiState>(
    listener: (context, state) {},
    builder: (context,state) {
      var cubit = BmiCubit.get(context);
      return Column(
        children: [
          Text('Results',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),),
          SizedBox(
            height: 50,
          ),
          Text('Your Current BMI is ${cubit.BMI} Indicating your Weight is in the ${cubit.value} Category for your Adults of your Height',style: TextStyle(fontSize:42,fontWeight: FontWeight.w600,color: Colors.white
          ),),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed:(){
            cubit.BMI =0;
            cubit.height=120;
            cubit.weight=40;
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomeView()));
          }, child: Text('Recalculate BMI',style: TextStyle(fontSize: 25),),style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
          ),)
        ],
      );
    },
    ),
    );
  }
}
