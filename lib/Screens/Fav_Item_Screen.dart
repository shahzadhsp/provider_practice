import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_again/models/model_class.dart';

import '../Provider/Favourite_provider.dart';

// ignore: camel_case_types
class Fav_item_Screen extends StatefulWidget {
  const Fav_item_Screen({Key? key}) : super(key: key);

  @override
  State<Fav_item_Screen> createState() => _Fav_item_ScreenState();
}

// ignore: camel_case_types
class _Fav_item_ScreenState extends State<Fav_item_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('these are my fav items'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<FavouriteProvider>(
              builder: (context, ref, child) {
                return ListView.builder(
                  itemCount: ref.numberOfIndex.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        if (ref.numberOfIndex.contains(index)) {
                          ref.removeIndex(index);
                        } else {
                          ref.addIndex(
                            ModelClass(lasd: 'lasd', name: 'name'),
                          );
                        }
                      },
                      title: Text('item   $index'),
                      leading: Icon(
                        ref.numberOfIndex.contains(index)
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
