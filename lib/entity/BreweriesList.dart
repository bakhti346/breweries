import 'Brewery.dart';

class BreweriesList {
  late String message;
  late bool status;
  late List<Brewery> breweryList;

  BreweriesList(this.message, this.status, this.breweryList);

  BreweriesList.fromJson(json) {
    breweryList =
        List.generate(json.length, (index) => Brewery.fromJson(json[index]));
  }
}
