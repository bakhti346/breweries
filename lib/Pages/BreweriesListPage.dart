import 'package:breweries_app/Pages/BreweriesDetailPage.dart';
import 'package:breweries_app/bloc/BreweryBloc.dart';
import 'package:breweries_app/entity/BreweriesList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BreweriesListPage extends StatefulWidget {
  BreweriesListPage({Key? key, required this.title}) : super(key: key);
  BreweryBloc bloc = BreweryBloc();
  final String title;

  @override
  _BreweriesListPageState createState() => _BreweriesListPageState();
}

class _BreweriesListPageState extends State<BreweriesListPage> {
  @override
  void initState() {
    super.initState();
    widget.bloc.getBreweries();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: StreamBuilder<BreweriesList>(
                stream: widget.bloc.breweryListBloc.stream,
                builder: (ctx, snapshot) {
                  if (!snapshot.hasData)
                    return Container();
                  else
                    return ListView.separated(
                        separatorBuilder: (context, index) =>
                            Divider(color: Colors.black),
                        itemCount: snapshot.data!.breweryList.length,
                        itemBuilder: (BuildContext ctx, int index) {
                          final titre = snapshot
                              .data!.breweryList[index].name; // for example

                          return ListTile(
                            title: Text(titre),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BreweriesDetailPage(
                                        snapshot.data!.breweryList[index])),
                              );
                            },
                          );
                        });
                })));
  }
}
