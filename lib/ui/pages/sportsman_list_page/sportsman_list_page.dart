import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/domain/entity/sportsman.dart';
import 'package:sport_app/ui/pages/sportsman_list_page/sportsman_list_page_model.dart';

class SportsmenListPage extends StatelessWidget {
  const SportsmenListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageModel = context.watch<SportsmenListPageModel>();
    final sportsmanList = pageModel.state.sportsmen;
    final hasData = sportsmanList != null;
    if (!hasData) {
      pageModel.requireData();
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Спортсмены'),
      ),
      body: Center(
        child: hasData
            ? _buildListOrLoading(sportsmanList, pageModel)
            : const CircularProgressIndicator(),
      ),
      floatingActionButton: hasData ? _buildAddButton() : null,
    );
  }

  FloatingActionButton _buildAddButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(
        Icons.add,
      ),
    );
  }

  Widget _buildListOrLoading(List<Sportsman> sportsmanList,
      SportsmenListPageModel pageModel,) {
    return sportsmanList.isNotEmpty
        ? _buildList(sportsmanList, pageModel)
        : const Text('Спортсменов пока нет');
  }

  ListView _buildList(List<Sportsman> sportsmanList,
      SportsmenListPageModel pageModel,) {
    return ListView.builder(
      itemCount: sportsmanList.length * 2,
      itemBuilder: (context, index) {
        // return _buildListTile(sportsmanList[index], pageModel);
        return index.isEven
            ? _buildListTile(sportsmanList[index ~/ 2], pageModel)
            : const Divider();
      },
    );
  }

  ListTile _buildListTile(Sportsman sportsman,
      SportsmenListPageModel pageModel,) {
    return ListTile(
      title: Text(
        '${sportsman.surname} ${sportsman.name} ${sportsman.patronymic}',
      ),
      subtitle: Text(
        sportsman.category,
      ),
      // todo: fix checkbox and delete
      trailing: Checkbox(
        onChanged: pageModel.select(sportsman.id),
        value: pageModel.selected(sportsman.id),
      ),
    );
  }
}
