import 'package:flutter/material.dart';
import 'package:greenilluv1/model/product.dart';
import 'package:greenilluv1/products/details_page.dart';
//import 'package:products_tutorial/util/constants.dart';
//import 'package:products_tutorial/util/routes.dart';

class ProductsListItem extends StatelessWidget {
  final Product product1;
  final Product product2;

  ProductsListItem({
    @required this.product1,
    @required this.product2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildProductItemCard(context, product1),
        //_buildProductItemCard(context, product2),
      ],
    );
  }

  _buildProductItemCard(BuildContext context, Product product) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return ProductDetailPage(product: product);
            },
          ),
        );
      },
      child: Card(
        elevation: 4.0,
      child: Column(
        children: <Widget>[
         Container(
            padding: const EdgeInsets.only(
            left: 4.0,
            ),
          child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                left: 4.0,
                top: 8.0,
              ),
              child: Image.network(
                product.images[0].imageURL,
              ),
              height: 100.0,
              width: MediaQuery.of(context).size.width / 2.1,
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 4.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    product.productName,
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "\$${product.salePrice}",
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "\$${product.regularPrice}",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "${product.discount}% off",
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
                width: MediaQuery.of(context).size.width / 2
            ),
          ],
        ),
      ),
      _buildButtonBar(context,product), //bottom button
      ],
      ),
      ),
    );
  }

  _buildButtonBar(BuildContext context, Product product) {
    return Container(
      width: MediaQuery.of(context).size.width - 8,
      padding: EdgeInsets.all(4),
      height: 35.0,
       child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
              fit: FlexFit.loose,
              //flex: 1,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.white,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "SAVE",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Flexible(
              fit: FlexFit.loose,
              //flex: 2,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.white,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                     Text(
                        "Type",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Flexible(
              //flex: 3,
              fit: FlexFit.loose,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.green,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                     Text(
                        "ADD TO CART",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}