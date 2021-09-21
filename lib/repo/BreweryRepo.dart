import 'package:breweries_app/base/ApiHitter.dart';
import 'package:breweries_app/entity/BreweriesList.dart';
import 'package:breweries_app/entity/Brewery.dart';
import 'package:breweries_app/base/ApiEndPoint.dart';

import 'BaseRepository.dart';

class BreweryRepo extends BaseRepository{
  Future<BreweriesList> getBreweryList() async {
    ApiResponse apiResponse =
    await apiHitter.getApiResponse(ApiEndpoint.BREWERIES_LIST );
    if (apiResponse.status) {

      return BreweriesList.fromJson(apiResponse.response.data)..status=apiResponse.status;
    } else {
      return BreweriesList(apiResponse.msg,apiResponse.status, List.empty(growable:false));

    }
  }

}