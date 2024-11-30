class Hoodie{
  int id;
  String image;
  String description;
  double price;
  String name;

  Hoodie({required this.id, required this.description,required this.image,required this.price,required this.name});

  Hoodie.fromJson(Map<String,dynamic> data):
        id=data['id'],
        description=data['description'],
        image=data['image'],
        price=data['price'],
        name=data['name'];
  Map<String,dynamic> toJson()=>{'id':id,'description':description,'image':image,'price':price,'name':name};
}