import 'package:flutter/material.dart';
import 'package:lab1/widgets/hoodie_card.dart';
import 'package:lab1/models/hoodie_model.dart';
import 'package:lab1/widgets/hoodie_card_data.dart';
class HoodieGrid extends StatefulWidget{
  final List<Hoodie> hoodie;
  const HoodieGrid({super.key, required this.hoodie});

  @override
  _HoodieGridState createState() => _HoodieGridState();
}

class _HoodieGridState extends State<HoodieGrid>{
  Widget build(BuildContext context){
    final width=MediaQuery.of(context).size.width;
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200/244,
      physics: const BouncingScrollPhysics(),
      children: widget.hoodie.map((hoodie)=>
          HoodieCard(id: hoodie.id, description: hoodie.description, image: hoodie.image, price: hoodie.price, name: hoodie.name),
      ).toList(),
    );
  }
}