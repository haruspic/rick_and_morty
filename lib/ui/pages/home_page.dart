import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/bloc/character_bloc.dart';
import 'package:rick_and_morty/data/repositories/character_repo.dart';
import 'package:rick_and_morty/ui/pages/search_page.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
    required this.title,
  });

  final String title;
  final repositiry = CharacterRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          centerTitle: true,
          title: Text(
            title,
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
        body: BlocProvider(
          create: (context) => CharacterBloc(characterRepo: repositiry),
          child: Container(
            decoration: const BoxDecoration(color: Colors.black87),
            child: const SearchPage(),
          ),
        ));
  }
}
