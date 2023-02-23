import 'package:blocer/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  Nge tot = Nge();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Apps'),
        backgroundColor: Color.fromARGB(255, 11, 19, 159),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 83, 3, 255),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                BlocBuilder<Nge, int>(
                  bloc: tot,
                  builder: (context, state) {
                    return Text(
                      '$state',
                      style: TextStyle(fontSize: 60, color: Colors.white),
                    );
                  },
                ),
                // StreamBuilder(
                //   initialData: tot.init,
                //   stream: tot.stream,
                //   builder: (context, snapshot) {
                //     return Text(
                //       '${snapshot.data}',
                //       style: TextStyle(fontSize: 60, color: Colors.white),
                //     );
                //   },
                // ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: IconButton(
                          onPressed: () {
                            tot.decrem();
                          },
                          icon: Icon(Icons.remove)),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: IconButton(
                          onPressed: () {
                            tot.increm();
                          },
                          icon: Icon(Icons.add)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
