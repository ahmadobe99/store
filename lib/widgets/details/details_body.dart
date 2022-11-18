import 'package:flutter/material.dart';
import 'package:store/components/constans.dart';
import 'package:store/models/product.dart';
import 'package:store/widgets/details/color_dot.dart';
import 'package:store/widgets/details/product_image.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, this.product});
  final Product? product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5,
          ),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: ProductImage(
                      Tag: "${product!.id}",
                      image: "${product!.image}",
                      size: size)),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                ),
              
               
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding / 2,
                ),
                child: Text(
                  "${product!.title}",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                "Price: ${product!.price}\$",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
            ],
          ),
        ),
       
      ],
    );
  }
}
