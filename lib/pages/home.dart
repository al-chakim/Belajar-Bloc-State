import 'package:blocer/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  Nge tot = Nge();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Apps'),
        backgroundColor: const Color.fromARGB(255, 11, 19, 159),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 83, 3, 255),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                BlocBuilder<Nge, int>(
                  bloc: tot,
                  // buildWhen: (previous, current) {
                  //   if (current % 2 == 0) {
                  //     return true;
                  //   } else {
                  //     return false;
                  //   }
                  // },
                  builder: (context, state) {
                    return Text(
                      '$state',
                      style: const TextStyle(fontSize: 60, color: Colors.white),
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
                const SizedBox(
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
                          icon: const Icon(Icons.remove)),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: IconButton(
                          onPressed: () {
                            tot.reset();
                          },
                          icon: const Icon(Icons.restore)),
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
                          icon: const Icon(Icons.add)),
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
