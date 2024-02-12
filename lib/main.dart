import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:my_grapgql_project/anime.dart';
import 'package:my_grapgql_project/graphql_config.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final service = GraphQlService();

  runApp(
      MainApp(
          client: ValueNotifier(
              service.client()
          )
      )
  );
}

class MainApp extends StatelessWidget {
  final ValueNotifier<GraphQLClient>? client;

  const MainApp({
    super.key,
  required this.client
  });

  @override
  Widget build(BuildContext context) {
    return  GraphQLProvider(
      client: client,
      child: const MaterialApp(
        home: AnimeListPage()
      ),
    );
  }
}
