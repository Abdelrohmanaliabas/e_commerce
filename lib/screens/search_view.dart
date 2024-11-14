import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(28.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'search for ',
              suffixIcon: Icon(Icons.search),
            ),
          )
        ],
      ),
    );
  }
}
