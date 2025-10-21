
import '../models/home_item.dart';

abstract class HomeState {

}

class HomeInitialState extends HomeState {

}

class HomeItemsLoaded extends HomeState {
  List<HomeItem> items;

  HomeItemsLoaded(this.items);
}