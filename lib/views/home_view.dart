import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_session5/bloc/bmi_calculator/bmi_cubit.dart';
import 'package:task_session5/componets/counter%20container.dart';
import 'package:task_session5/componets/drop_menu.dart';
import 'package:task_session5/componets/radio_button.dart';
import 'package:task_session5/views/answer_view.dart';
class HomeView extends StatefulWidget {

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: BlocConsumer<BmiCubit,BmiState>(
          listener: (context, state) {},
          builder: (context,state){
            var cubit = BmiCubit.get(context);
            return Column(
            children: [
            Text('BMI Calculator',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 50,
            ),),
            SizedBox(
            height: 50,
            ),
            Text('Gender :',style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            ),),
            SizedBox(
            height: 20,
            ),
            Row(
            children: [
            RadioButton(text:'Female',index: 1),
            SizedBox(width: 10,),
            RadioButton(text:'Male', index:2),
      ],
      ),
              SizedBox(
                height: 20,
              ),
              Text('Weight :',style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            ),),
            Row(
              children: [
                CounterContainer(count: cubit.weight),
                SizedBox(width: 130,),
                Text('KG',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(
            height: 20,
            ),
            Text('Height :',style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            ),),
            SizedBox(
            height: 20,
            ),
            Row(
              children: [
                CounterContainer(count: cubit.height),
                SizedBox(width: 130,),
                Text('CM',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
              ],
            ),
            Text('Age :',style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            ),),
            SizedBox(
            height: 20,
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){
                    cubit.DecrementAge();
                  }, icon: Icon(Icons.remove)),
                  Text('${cubit.age}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  IconButton(onPressed: (){
                    cubit.IncrementAge();
                  }, icon: Icon(Icons.add)),
                ],
              ),
            ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed:(){
                cubit.Bmi();
                cubit.BmiValue();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => AnswerView()));
              }, child: Text('Calculate',style: TextStyle(fontSize: 25),),style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),)
            ],
            );
            },
        ),

    );
  }
}
