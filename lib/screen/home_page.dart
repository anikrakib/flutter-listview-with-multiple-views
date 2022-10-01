import 'dart:math';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:listview_with_multiple_views/model/data.dart';
import 'package:listview_with_multiple_views/model/view_type.dart';
import 'package:listview_with_multiple_views/screen/components/add_item_custom_list_tile.dart';
import 'package:listview_with_multiple_views/screen/components/post_item_custom_list_tile.dart';
import 'package:listview_with_multiple_views/screen/components/suggest_user_custom_list.dart';


final List<ListItem> items = postList;
final faker = Faker();
final random = Random();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View With Multiple View"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            if (item is AddItem) {
              return AddItemWidget(item: item);
            } else if (item is PostItem) {
              return PostItemWidget(postItem: item);
            } else if (item is SuggestUser) {
              return SuggestUserWidget(suggestUser: item.users);
            }
            return const ListTile(
              title: Text('Cant Find Anything'),
            );
          },
        ),
      ),
    );
  }
}
