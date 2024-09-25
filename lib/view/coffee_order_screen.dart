import 'package:coffee/view/components/item_counter.dart';
import 'package:flutter/material.dart';

class CoffeeOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detail"),
          // scrolledUnderElevation: 0,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.chevron_left)),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                },
                icon: const Icon(Icons.favorite_border))
          ],
        ),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text("data"),
                  Column(
                    children: [
                      Text("data"),
                      Text("data"),
                      Row(
                        children: [
                          OutlinedButton(
                              onPressed: () {
                                print("object");
                              },
                              style: OutlinedButton.styleFrom(
                              ),
                              child: Row(
                                children: [Icon(Icons.abc), Text("data")],
                              )),
                          SizedBox(width: 20,),
                          OutlinedButton(
                              onPressed: () {
                                print("object");
                              },
                              style: OutlinedButton.styleFrom(
                              ),
                              child: Row(
                                children: [Icon(Icons.abc), Text("data")],
                              )),
                        ],
                      ),
                      Divider(),
                      ItemCounter(),
                      Divider(),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
