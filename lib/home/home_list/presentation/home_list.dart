import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/home/home_list/presentation/home_bloc.dart';
import 'package:sample_app/home/home_list/presentation/home_event.dart';
import 'package:sample_app/home/home_list/presentation/home_state.dart';

class HomeListWidget extends StatefulWidget {
  const HomeListWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeListWidgetState();
  }
}

class HomeListWidgetState extends State<HomeListWidget> {
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();

    context.read<HomeBloc>().add(FetchPostEvent());

    controller.addListener(() {
      if (controller.position.pixels >= controller.position.maxScrollExtent) {
        context.read<HomeBloc>().add(LoadMoreEvent());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Artworks')),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (BuildContext context, HomeState state) {
          if (state is HomeItemsLoaded) {
            return ListView.builder(
              controller: controller,
              itemCount: state.items.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text(state.items[index].title ?? ""));
              },
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
