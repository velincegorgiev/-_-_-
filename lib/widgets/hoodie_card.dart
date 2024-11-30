import 'package:flutter/material.dart';
import 'package:lab1/models/hoodie_model.dart';
import 'package:lab1/widgets/hoodie_card_data.dart';

class HoodieCard extends StatelessWidget{
  final int id;
  final String image;
  final double price;
  final String description;
  final String name;

  const HoodieCard({super.key, required this.id,required this.description,required this.image, required this.price,required this.name});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        enableFeedback: true,
        splashColor: Colors.grey[50],
        onTap: ()=>{
          Navigator.pushNamed(context, "/details",arguments: Hoodie(id: id, description: description, image: image, price: price,name: name))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green.withOpacity(0.8), width: 2),
              borderRadius: BorderRadius.circular(10)
          ),
          child: HoodieCardData(image: image, name: name,description: description,),
        ),
      ),
    );
  }
}