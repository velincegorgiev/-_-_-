import 'package:flutter/material.dart';
import 'package:lab1/models/hoodie_model.dart';
import 'package:lab1/widgets/details_data.dart';
import 'package:lab1/widgets/details_image.dart';
import 'package:lab1/widgets/details_title.dart';
import 'package:lab1/widgets/details_back_button.dart';

class Details extends StatelessWidget{
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments= ModalRoute.of(context)!.settings.arguments as Hoodie;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top:MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailImage(image: arguments.image),
            DetailTitle(name: arguments.name),
            DetailData(id: arguments.id,description: arguments.description, name:arguments.name, price: arguments.price,),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const DetailBackButton(),
    );
  }
}