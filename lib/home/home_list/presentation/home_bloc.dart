import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/home/home_list/models/home_item.dart';

import '../data/home_repository.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  int page = 0;
  final HomeRepositoryImpl repository;

  List<HomeItem> items = [];

  HomeBloc(this.repository) : super(HomeInitialState()) {
    on<FetchPostEvent>((event, emit) async {
      page = 0; // Reset page for a fresh fetch
      final items = await repository.fetchItems(page);

      this.items = items.data ?? [];

      if (!emit.isDone) {
        emit(HomeItemsLoaded(this.items));
      }
    });

    on<LoadMoreEvent>((event, emit) async {
      page++;
      final items = await repository.fetchItems(page);

      this.items.addAll(items.data ?? []);

      if (!emit.isDone) {
        emit(HomeItemsLoaded(this.items));
      }
    });
  }
}