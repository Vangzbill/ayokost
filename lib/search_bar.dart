import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final void Function(String) onSearch;

  SearchBar({required this.onSearch});

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          controller: _searchController,
          decoration: InputDecoration(labelText: 'Cari Kost'),
        ),
        ElevatedButton(
          onPressed: () {
            widget.onSearch(_searchController.text);
          },
          child: Text('Cari'),
        ),
      ],
    );
  }
}
