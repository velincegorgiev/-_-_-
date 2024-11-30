import 'package:flutter/material.dart';

import '../models/hoodie_model.dart';
import '../widgets/hoodie_grid.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState()=> _HomeState();
}
class _HomeState extends State<Home>{
  List<Hoodie> hoodie=[
    Hoodie(id: 1,
        name: "Nike Hoodie",
        description: "Men's Lacrosse Pullover Hoodie in Dark Red.",
        image: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/6e8c6c46-107a-4115-b51b-cf4737d03519/M+NK+LACROSSE+MESH+PO+HOODIE.png",
        price: 70.00),
    Hoodie(id: 2,
        name: "Nike Hoodie",
        description: "Men's Lacrosse Pullover Hoodie in Dark Blue.",
        image: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/3ace5ea6-76f7-41e0-a831-0e5a4db5b995/M+NK+LACROSSE+MESH+PO+HOODIE.png",
        price: 70.00),
    Hoodie(id: 3,
        name: "Nike Hoodie",
        description: "Men's Lacrosse Pullover Hoodie in Green.",
        image: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/f8f3a8a8-a580-4021-b6f1-f51658a5254d/M+NK+LACROSSE+MESH+PO+HOODIE.png",
        price: 70.00),
    Hoodie(id: 4,
        name: "Nike Lacrosse",
        description: "Men's Pullover Hoodie in White.",
        image: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/7dfea8a9-c22f-4de4-8746-8ed3eaba6492/M+NK+SWOOSH+2+LACROSSE+PO+HOOD.png",
        price: 100.00),
    Hoodie(id: 5,
        name: "Nike Hoodie",
        description: "Nike Club Fleece Military Veterans.",
        image: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/2559a19e-cd88-44c9-9e6d-0d042af9b4ae/M+NK+MILITARY+VETERANS+HOODIE.png",
        price: 110.00),
    Hoodie(id: 6,
        name: "Nike Club Fleece",
        description: "Men's Golf Pullover Hoodie in Green.",
        image: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/da8e488e-f17f-413c-90b9-58e275314483/Club+Fleece+Hoody.png",
        price: 90.00),
    Hoodie(id: 7,
        name: "Nike Club Fleece",
        description: "Men's Golf Pullover Hoodie in Black.",
        image: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/4a6bf244-5b93-4eed-b41b-6da3354d8cfb/Club+Fleece+Hoody.png",
        price: 90.00),
    Hoodie(id: 8,
        name: "Nike Hoodie",
        description: "Men's Tennis Pullover Hoodie in Black.",
        image: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/ce90a61a-07ea-493f-800a-5cf88c1e831d/M%27S+QUEENS+TENNIS+PO+HOODIE.png",
        price: 95.00),

  ];


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
        title: const Text("201160",style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: HoodieGrid(hoodie: hoodie),
    );
  }
}
