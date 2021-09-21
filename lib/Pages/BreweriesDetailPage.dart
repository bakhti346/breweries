import 'package:breweries_app/entity/Brewery.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BreweriesDetailPage extends StatelessWidget {
  Brewery selectedBloc;

  BreweriesDetailPage(this.selectedBloc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(selectedBloc.name),
        ),
        body: Center(
            child: Column(
          children: [
            Text(selectedBloc.name),
            Text(selectedBloc.breweryType),
            Text(selectedBloc.country),
            Text(selectedBloc.createdAt),
          ],
        )));
  }
}
