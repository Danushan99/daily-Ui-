import 'package:carousel_slider/carousel_slider.dart' as carousel_slider;
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int _current = 0;
  Map<String, dynamic>?
      _selectedProduct; // Changed from dynamic _selectedIndex = {};

  // ] carousel_slider.CarouselController _carouselController =
  //     carousel_slider.CarouselController(); // Use 'final' instead of 'new'

  final List<Map<String, dynamic>> _products = [
    // Use typed List<Map<String, dynamic>>
    {
      'title': 'Adidas Originals \nby Alexander Wang',
      'image':
          'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGFkaWRhc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
      'description': 'Limited collection'
    },
    {
      'title': 'Adidas Originals \nby Alexander Wang',
      'image':
          'https://images.unsplash.com/photo-1582588678413-dbf45f4823e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2265&q=80',
      'description': 'Limited collection'
    },
    {
      'title': 'Adidas Originals \nby Alexander Wang',
      'image':
          'https://images.unsplash.com/photo-1589188056053-28910dc61d38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2264&q=80',
      'description': 'Limited collection'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _selectedProduct != null
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.arrow_forward_ios),
            )
          : null,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          '@theflutterlover',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
            color: Colors
                .black), // Ensures icons are visible on transparent AppBar
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: carousel_slider.CarouselSlider(
          //  carouselController: _carouselController,
          options: carousel_slider.CarouselOptions(
            height: 450.0,
            aspectRatio: 16 / 9,
            viewportFraction: 0.70,
            enlargeCenterPage: true,
            pageSnapping: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: _products.map((product) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_selectedProduct == product) {
                        _selectedProduct = null;
                      } else {
                        _selectedProduct = product;
                      }
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: _selectedProduct == product
                          ? Border.all(color: Colors.blue.shade500, width: 3)
                          : null,
                      boxShadow: _selectedProduct == product
                          ? [
                              BoxShadow(
                                color: Colors.blue.shade100,
                                blurRadius: 30,
                                offset: Offset(0, 10),
                              )
                            ]
                          : [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 20,
                                offset: Offset(0, 5),
                              )
                            ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 320,
                            margin: EdgeInsets.only(top: 10),
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.network(
                              product['image'],
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  Icon(Icons.broken_image, size: 100),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            product['title'],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          Text(
                            product['description'],
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
