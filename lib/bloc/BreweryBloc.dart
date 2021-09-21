import 'package:breweries_app/entity/BreweriesList.dart';
import 'package:breweries_app/repo/BreweryRepo.dart';
import 'package:rxdart/rxdart.dart';

import 'BaseBloc.dart';

class BreweryBloc extends BlocBase {
  var breweryListBloc = BehaviorSubject<BreweriesList>();
  BreweryRepo repo = BreweryRepo();

  @override
  void dispose() {
  }

  Future<void> getBreweries() async {
    breweryListBloc.add(await repo.getBreweryList());
  }
}
