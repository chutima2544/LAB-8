import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  List<List<dynamic>> foodlists = [
    ["https://img.kapook.com/u/2017/sarinee/July/week3/cok2.jpg",
    "ต้มยำกุ้ง",
    100],
    ["https://img.kapook.com/u/2015/surauch/cook2/PT1.jpg",
    "ผัดไทย",
    50],
    ["https://asset-apac.unileversolutions.com/content/dam/unilever/knorr_world/thailand/digital_and_online/banner_subcat_cuisinethai_%E0%B9%81%E0%B8%81%E0%B8%87%E0%B8%A1%E0%B8%B1%E0%B8%AA%E0%B8%A1%E0%B8%B1%E0%B9%88%E0%B8%99%E0%B9%84%E0%B8%81%E0%B9%88-34933161-jpg.jpg.ulenscale.838x450.jpg",
    "แกงมัสมั่นไก่",
    80],
    ["https://bunchostel.com/wp-content/uploads/2021/08/5-%E0%B8%AD%E0%B8%B1%E0%B8%99%E0%B8%94%E0%B8%B1%E0%B8%9A%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%AD%E0%B8%B2%E0%B8%AB%E0%B8%B2%E0%B8%A3%E0%B8%97%E0%B8%B0%E0%B9%80%E0%B8%A5%E0%B9%84%E0%B8%97%E0%B8%A2%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%94%E0%B8%B1%E0%B8%87%E0%B9%81%E0%B8%A5%E0%B8%B0%E0%B8%99%E0%B9%88%E0%B8%B2%E0%B8%94%E0%B8%B6%E0%B8%87%E0%B8%94%E0%B8%B9%E0%B8%94%E0%B8%AA%E0%B8%B8%E0%B8%94%E0%B9%86-scaled.jpg",
    "เซ็ทอาหารทะเล",
    500],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodlists.length,
      itemBuilder: (context,index){
        return Card(
          child: Container(
            height: 100,
            width: double.infinity,
            child: Stack(
              children: [
                Row(
                  children: [
                    Image.network(
                      foodlists[index][0],
                      fit: BoxFit.cover,
                      width: 250,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${foodlists[index][1]}",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              "${foodlists[index][2]} ฿",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      )
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  alignment: Alignment.bottomRight,
                  child: Chip(
                    backgroundColor: Colors.green,
                    label: Text(
                      "สั่งซื้อ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}