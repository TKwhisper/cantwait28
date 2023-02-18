import 'package:bloc/bloc.dart';
import 'package:cantwait28/models/item_model.dart';
import 'package:cantwait28/repositories/items_repository.dart';

part 'detalis_state.dart';

class DetalisCubit extends Cubit<DetalisState> {
  DetalisCubit(this._itemsRepository) : super(DetalisState(itemModel: null));

  final ItemsRepository _itemsRepository;
  Future<void> getItemWithID(String id) async {
    final itemModel = await _itemsRepository.get(id: id);
    emit(DetalisState(itemModel: itemModel));
  }
}
