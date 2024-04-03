import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_again/Screens/Fav_Item_Screen.dart';
import 'package:provider_again/models/model_class.dart';

import '../Provider/Favourite_provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);
  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<ModelClass> modelClass = [
    ModelClass(lasd: 'lasd', name: ' name'),
    ModelClass(lasd: 'lasd', name: ' name'),
    ModelClass(lasd: 'lasd', name: ' name'),
    ModelClass(lasd: 'lasd', name: ' name'),
    ModelClass(lasd: 'lasd', name: ' name'),
    ModelClass(lasd: 'lasd', name: ' name'),
    ModelClass(lasd: 'lasd', name: ' name'),
    ModelClass(lasd: 'lasd', name: ' name'),
    ModelClass(lasd: 'lasd', name: ' name'),
    ModelClass(lasd: 'lasd', name: ' name'),
    ModelClass(lasd: 'lasd', name: ' name'),
  ];
  @override
  Widget build(BuildContext context) {
    print('builde has been called');
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite Screen '),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Fav_item_Screen(),
                    ));
              },
              icon: Icon(Icons.favorite)),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: modelClass.length,
              itemBuilder: (context, index) {
                return Consumer<FavouriteProvider>(
                  builder: (context, value, child) {
                    return ListTile(
                      onTap: () {
                        if (value.numberOfIndex.contains(index)) {
                          value.removeIndex(index);
                        } else {
                          value.addIndex(
                            ModelClass(lasd: 'lasd', name: 'name'),
                          );
                        }
                      },
                      title: Text(modelClass[index].name),subtitle: Text(modelClass[index].lasd),
                      trailing: Icon(value.numberOfIndex.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_border_outlined),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
