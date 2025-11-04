import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc(),
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Contador com BLoC ⚙️'),
            centerTitle: true,
          ),
          body: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Center(
                child: Text(
                  'Valor: ${state.counter}',
                  style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              );
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: 'decrement',
                tooltip: 'Diminuir',
                backgroundColor: Colors.redAccent,
                onPressed: () {
                  context.read<HomeBloc>().add(DecrementEvent());
                },
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 20),
              FloatingActionButton(
                heroTag: 'reset',
                tooltip: 'Resetar',
                backgroundColor: Colors.grey,
                onPressed: () {
                  context.read<HomeBloc>().add(ResetEvent());
                },
                child: const Icon(Icons.refresh),
              ),
              const SizedBox(width: 20),
              FloatingActionButton(
                heroTag: 'increment',
                tooltip: 'Aumentar',
                backgroundColor: Colors.green,
                onPressed: () {
                  context.read<HomeBloc>().add(IncrementEvent());
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
