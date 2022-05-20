import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:solveit_mentors/Components/Config.dart';
import 'package:solveit_mentors/Components/Queries.dart';




class TestScreen extends StatefulWidget {
  static const String _id = 'test_screen';

  const TestScreen({Key? key}) : super(key: key);
  static String getId() {
    return _id;
  }

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: gql(Queries.characters),
        variables: <String, dynamic>{'page': 1},
      ),
      builder: (result, {refetch, fetchMore}) {
        if (result.hasException) return Text(result.exception.toString());
        if (result.isLoading) return Text('Loading');
        List characters = result.data["characters"]["results"];
        List<Widget> charactersWidgets = characters.map<Widget>((character) {
          return Text('${character['id']}. ${character['name']}');
        }).toList();
        return ListView(
          shrinkWrap: true,
          children: charactersWidgets,
        );
      },
    );
  }
}
