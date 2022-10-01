import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview_with_multiple_views/screen/home_page.dart';

Row postHeader(String name, bool addOrPost) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 16.0,
              top: 8.0,
              bottom: 8.0,
            ),
            child: SizedBox(
              height: 45,
              width: 45,
              child: CircleAvatar(
                radius: 10,
                backgroundImage: NetworkImage(
                  'https://randomuser.me/api/portraits/women/${random.nextInt(100)}.jpg',
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Visibility(
                visible: addOrPost,
                child: const Text(
                  'Sponsored',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      const Icon(
        CupertinoIcons.ellipsis_vertical,
        color: Colors.white,
        size: 20,
      ),
    ],
  );
}
