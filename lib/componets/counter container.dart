import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_session5/bloc/bmi_calculator/bmi_cubit.dart';
class CounterContainer extends StatefulWidget {
double? count;

CounterContainer({required this.count});

  @override
  State<CounterContainer> createState() => _CounterContainerState();
}

class _CounterContainerState extends State<CounterContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BmiCubit,BmiState>
      (
        listener: (context,state){},
        builder: (context, state) {
          var cubit = BmiCubit.get(context);
        return Container(
          color: Colors.white,
          child: Row(
            children: [
              IconButton(onPressed: (){
                  (widget.count! == cubit.weight)? cubit.DecrementW(): cubit.DecrementH();
              }, icon: Icon(Icons.remove)),
              Text('${widget.count!}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              IconButton(onPressed: (){
                  (widget.count! == cubit.weight)? cubit.IncrementW(): cubit.IncrementH();
              }, icon: Icon(Icons.add)),
            ],
          ) ,
        );
      }

      );
  }
}
