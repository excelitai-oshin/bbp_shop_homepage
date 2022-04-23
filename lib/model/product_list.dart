import 'package:bpp_shop/model/product_model.dart';
import 'package:flutter/material.dart';
class Dummy_Product with ChangeNotifier{
  List<Product> _items1 = [
    Product(
      id:'p1',
      upcoming:withoutUpcomming() ,
      image: 'assets/image 1.png',
      price: 200,
      title: 'Lucy Oliva Olive Oil',
    ),
    Product(
      id:'p2',
      upcoming:withoutUpcomming() ,
      image: 'assets/image 2.png',
      price: 200,
      title: 'Blue Stone Tasbi',
    ),
    Product(
      id:'p3',
      upcoming:withoutUpcomming() ,
      image: 'assets/image 3.png',
      price: 200,
      title: 'Green & White Janamaz',
    ),
    Product(
      id:'p4',
      upcoming:upcommingWidget(),
      image: 'assets/image 4.png',
      price: 200,
      title: 'Khejur Gur',
    ),
    Product(
      id:'p4',
      upcoming:upcommingWidget(),
      image: 'assets/image 5.png',
      price: 200,
      title: 'Khejur Gur',
    ),Product(
      id:'p4',
      upcoming:upcommingWidget(),
      image: 'assets/image 6.png',
      price: 200,
      title: 'Khejur Gur',
    ),Product(
      id:'p4',
      upcoming:upcommingWidget(),
      image: 'assets/image 7.png',
      price: 200,
      title: 'Khejur Gur',
    ),Product(
      id:'p4',
      upcoming:upcommingWidget(),
      image: 'assets/image 8.png',
      price: 200,
      title: 'Khejur Gur',
    ),Product(
      id:'p4',
      upcoming:upcommingWidget(),
      image: 'assets/image 237.png',
      price: 200,
      title: 'Khejur Gur',
    ),Product(
      id:'p4',
      upcoming:upcommingWidget(),
      image: 'assets/image 238.png',
      price: 200, title: 'bhkjhlhjl',
    ),
    Product(
      id:'p4',
      upcoming:upcommingWidget(),
      image: 'assets/image 245.png',
      price: 200, title: 'bhkjhlhjl',
    ),
    Product(
      id:'p4',
      upcoming:upcommingWidget(),
      image: 'assets/image 246.png',
      price: 200, title: 'bhkjhlhjl',
    ),
    Product(
      id:'p4',
      upcoming:upcommingWidget(),
      image: 'assets/image 241.png',
      price: 200, title: 'bhkjhlhjl',
    ),
    Product(
      id:'p4',
      upcoming:upcommingWidget(),
      image: 'assets/image 242.png',
      price: 200, title: 'bhkjhlhjl',
    ),
    Product(
      id:'p4',
      upcoming:upcommingWidget(),
      image: 'assets/image 243.png',
      price: 200, title: 'bhkjhlhjl',
    ),
    Product(
      id:'p4',
      upcoming:upcommingWidget(),
      image: 'assets/image 244.png',
      price: 200, title: 'bhkjhlhjl',
    ),
  ];
  List<Product> get items {
    return [..._items1];
  }
  Product findById(String id) {
    return _items1.firstWhere((prod) => prod.id == id);
  }
}

class withoutUpcomming extends StatelessWidget {
  const withoutUpcomming({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
 );
  }
}

class upcommingWidget extends StatelessWidget {
  const upcommingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF426134),
      ),
      alignment: Alignment.topRight,
      height: 30,
      width: MediaQuery.of(context).size.width*.3,

      margin: EdgeInsets.only(top: 10),
      child: Center(child: Text("Upcoming..",style: TextStyle(color: Colors.white),)),
    );
  }
}