import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CounterProvider>(context,listen: false);
      print("build");
    return Scaffold(
      body: Center(
        child: Consumer<CounterProvider>(builder: (context,value,child){
          return Text(
              value.count.toString()
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        child:const Icon(Icons.add),
          onPressed: (){
          countProvider.addCount();
          }

      ),
    );
  }
}
