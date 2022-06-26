import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/domain/service/sportsman_service.dart';
import 'package:sport_app/ui/pages/sportsman_list_page/sportsman_list_model.dart';

class SportsmenListPageModel extends Cubit<SportsmanListModel> {
  final SportsmanService service;

  SportsmenListPageModel(this.service)
      : super(
          const SportsmanListModel(
            selected: {},
          ),
        );

  bool selected(int id) => state.selected.contains(id);

  void requireData() {
    service.getAll().then((sportsmen) => emit(
          SportsmanListModel(
            sportsmen: sportsmen,
            selected: {},
          ),
        ));
  }

  void Function(bool?) select(int id) {
    return (val) {
      if (val == null) {
        return;
      }

      if (val) {
        state.selected.add(id);
      } else {
        state.selected.remove(id);
      }
      emit(SportsmanListModel(
        selected: state.selected,
        sportsmen: state.sportsmen,
      ));
    };
  }

  void unselect(int id) {
    state.selected.remove(id);
    emit(SportsmanListModel(
      selected: state.selected,
      sportsmen: state.sportsmen,
    ));
  }

  void delete() {
    service.delete(state.selected);
    emit(
      const SportsmanListModel(
        selected: {},
      ),
    );
    requireData();
  }
}
