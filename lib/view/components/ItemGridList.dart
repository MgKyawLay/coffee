import 'package:coffee/view/components/square_button.dart';
import 'package:flutter/material.dart';

class ItemGridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.7),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                child: 
                Stack(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              child: Image.network(
                                "https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee-500x500.png",
                                height: 160,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            Text("data"),
                            Text("data"),
                            Text("data"),
                          ],
                        )
                    ),
                    Positioned(
                      child: SquareButton(onPress: (){}, size: 35, icon: Icon(Icons.add),),
                      bottom: 10,
                      right: 10,
                    )
                  ],
                )
              );
            }
            )
    );
  }
}
