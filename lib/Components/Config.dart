
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Config {
  static final HttpLink _httpLink =
  HttpLink('https://rickandmortyapi.com/graphql');
  static ValueNotifier<GraphQLClient> initClient() {
    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        link: _httpLink,
        cache: GraphQLCache(),
      ),
    );
    return client;
  }
}
class Queries {
  static String characters = """
    query characters(\$page: Int!) {
      characters(page: \$page) {
        results {
          id
          name
        }
      }
    }
  """;
}

/*
class Config {
  static final HttpLink _httpLink =
  HttpLink('https://api.github.com/graphql');
  static final AuthLink _authLink = AuthLink(
    getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
  );
  static final Link link = _authLink.concat(_httpLink);
  static ValueNotifier<GraphQLClient> initClient() {
    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        link: link,
        cache: GraphQLCache(),
      ),
    );
    return client;
  }
}

 */