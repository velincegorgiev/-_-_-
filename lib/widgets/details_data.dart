import 'package:flutter/material.dart';

class DetailData extends StatelessWidget{
  final int id;
  final String description;
  final String name;
  final double price;

  const DetailData({super.key, required this.id,required this.description,required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: 500,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(width: 2,color: Colors.grey)),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          Text("Price: ${price}\$",
              style: const TextStyle(fontSize: 21, color: Colors.black,fontWeight: FontWeight.bold)),
          Text("${description[0].toUpperCase()}${description.substring(1)}",
              style: const TextStyle(fontSize: 21, color: Colors.black))
        ],
      ),
    );
  }
}