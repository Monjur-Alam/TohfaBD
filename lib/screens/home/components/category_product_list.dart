import 'package:flutter/material.dart';

class CategoryProductsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Card(
              child: Center(child: Text('Dummy Card Text')),
            ),
          ),
        ),
      );
  }
}
