import 'package:flutter/material.dart';

class ChrisSearchBlog extends StatefulWidget {
  const ChrisSearchBlog({super.key});

  @override
  State<ChrisSearchBlog> createState() => _ChrisSearchBlogState();
}

class _ChrisSearchBlogState extends State<ChrisSearchBlog> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          //button
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: () {
                  // print(_searchController.text);
                  var searchText = _searchController.text;
                  if (searchText.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Please enter a search word')));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Searching for $searchText')));
                  }
                },
                child: const Text(
                  'Search',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
          )
        ],
      ),
    );
  }
}
