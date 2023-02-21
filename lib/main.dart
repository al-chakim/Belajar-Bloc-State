import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Nge extends Cubit<int>{
  //Nge(super.initialState);
  //Nge(): super(0);
  Nge({this.angkaCounter = 0}): super(angkaCounter);

  int angkaCounter;

  void tambah(){
    emit(state + 1);
  }

  void kurang(){
    emit(state - 1);
  }
}

class Home extends StatelessWidget {

  Nge tot = Nge(angkaCounter: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit Apps'),
        backgroundColor: Color.fromARGB(255, 41, 1, 128),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 83, 3, 255), 
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Column(
                  children: [
                    StreamBuilder(
                      initialData: tot.angkaCounter,
                      stream: tot.stream,
                      builder: (context, snapshot){
                        return Text(
                          '${snapshot.data}',
                          style: TextStyle(
                            fontSize: 70,
                            color: Colors.white
                          ),
                        );
                      }
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: IconButton(
                            onPressed: () {
                              tot.kurang();
                            },
                            icon: Icon(Icons.remove)
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: IconButton(
                            onPressed: () {
                              tot.tambah();
                            },
                            icon: Icon(Icons.add)
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        )
      )
    );
  }
}