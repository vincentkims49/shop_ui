import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/screens/details/details_screen.dart';

import 'popular_products.dart';
import 'section_title.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          pressSeeAll: () {},
          title: "New Arrival",
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demoproduct.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  bgcolor: demoproduct[index].bgColor,
                  image: demoproduct[index].image,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: demoproduct[index],
                        ),
                      ),
                    );
                  },
                  price: demoproduct[index].price,
                  title: demoproduct[index].title,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
