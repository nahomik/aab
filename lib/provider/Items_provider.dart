// ignore: file_names
import 'package:flutter/material.dart';
import 'Item_provider.dart';

class Items with ChangeNotifier {
  final List<Item> _items = [
    Item(
      id: "1",
      name: "Desktop",
      price: 200.00,
      imageUrl:
          'https://image.makewebeasy.net/makeweb/m_1920x0/aNxrrjOzc/acer/Desktop_M_Series.jpg',
      description:
          'A desktop computer is a personal computer designed for regular use at a stationary location on or near a desk due to its size and power requirements.',
    ),
    Item(
      id: "2",
      name: "Smart Phone",
      price: 100.00,
      imageUrl:
          'https://anfield-international.com/wp-content/uploads/2019/03/masonry3.jpg',
      description:
          'A smartphone is a portable computer device that combines mobile telephone functions and computing functions into one unit.',
    ),
    Item(
      id: "3",
      name: "Network Cable",
      price: 10.2,
      imageUrl: 'https://m.media-amazon.com/images/I/81vTnFRWnlL.jpg',
      description:
          'Networking cables are networking hardware used to connect one network device to other network devices or to connect two or more computers to share devices such as printers or scanners.',
    ),
    Item(
      id: "4",
      name: "Printer",
      price: 200,
      imageUrl:
          'https://petapixel.com/assets/uploads/2021/08/Canon-Pixma-Pro-1000.jpg',
      description:
          'In computing, a printer is a peripheral machine which makes a persistent representation of graphics or text, usually on paper.',
    ),
    Item(
      id: "5",
      name: "Smart Screen",
      price: 500,
      imageUrl:
          'https://www.hp.com/gb-en/shop/Html/Merch/Images/c07064049_1750x1285.jpg',
      description:
          'A computer monitor is an output device that displays information in pictorial or textual form. A discrete monitor comprises a visual display, support electronics, power supply, housing, electrical connectors, and external user controls.',
    ),
    Item(
      id: "6",
      name: "Android Tablet",
      price: 400,
      imageUrl:
          'https://m.media-amazon.com/images/I/51MFwU173IL._AC_UF894,1000_QL80_.jpg',
      description:
          'A tablet computer, commonly shortened to tablet, is a mobile device, typically with a mobile operating system and touchscreen display processing circuitry, and a rechargeable battery in a single, thin and flat package.',
    ),
    Item(
      id: "7",
      name: "Camera",
      price: 120,
      imageUrl: 'https://m.media-amazon.com/images/I/71Xp-K4MMBL._SL1000_.jpg',
      description: 'A camera is an optical instrument that captures images.',
    ),
  ];

  List<Item> get items {
    return [..._items];
  }

  Item findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }
}
