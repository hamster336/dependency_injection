import 'package:di_demo_project/cubit/rating_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Row(
              mainAxisAlignment: .center,
              children: [
                const Text('Bloc is Awesome: ', style: TextStyle(fontSize: 20)),

                BlocBuilder<RatingCubit, RatingState>(
                  builder: (context, state) {
                    return Text(
                      '${state.blocScore}',
                      style: TextStyle(fontSize: 20),
                    );
                  },
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: .center,
              children: [
                const Text(
                  'Cubit is Awesome: ',
                  style: TextStyle(fontSize: 20),
                ),

                BlocBuilder<RatingCubit, RatingState>(
                  builder: (context, state) {
                    return Text(
                      '${state.cubitScore}',
                      style: TextStyle(fontSize: 20),
                    );
                  },
                ),
              ],
            ),

            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: .center,
              children: [
                ElevatedButton(
                  onPressed: () => context.read<RatingCubit>().upVoteBloc(),
                  child: const Text(
                    'Upvote Bloc',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),

                const SizedBox(width: 40),

                ElevatedButton(
                  onPressed: () => context.read<RatingCubit>().upVoteCubit(),
                  child: const Text(
                    'Upvote Cubit',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
