import 'package:coffee/assets/colors.dart';
import 'package:coffee/view/components/category_tab.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
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
        // bottomSheet: ,
        body: Stack(
          children: [
            SingleChildScrollView(
                child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: deviceHeight * 0.25,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.overlayBackground,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const Text("data"),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("data"),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text("4.8")
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text("data"),
                      const ReadMoreText(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        trimLines: 3,
                        trimMode: TrimMode.Line,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text("data"),
                      CategoryTab(),
                    ],
                  ),
                ),
              ],
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: deviceHeight * 0.13,
                width: double.infinity,
                // color: Colors.red,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                ),
                child: Padding(padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text("data"),
                        Text("data")
                      ],
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, "/coffee_order");},
                      child: Text("data"),
                      style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        )
                    ),)
                  ],
                )),
              ),
            )
          ],
        ));
  }
}
