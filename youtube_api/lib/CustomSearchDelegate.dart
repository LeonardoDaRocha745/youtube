import 'package:flutter/material.dart';
import 'package:youtube_api/Home.dart';
import 'package:youtube_api/telas/Inicio.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  String get searchFieldLabel => 'Pesquisar';
  List<Widget>? buildActions(BuildContext context) {
    //define as ações que usuário vai utilizar
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null!);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    close(context, query);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
