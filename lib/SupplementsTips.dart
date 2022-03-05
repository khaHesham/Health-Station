import 'package:flutter/material.dart';

class SupplementsTips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 160.0,
              flexibleSpace: const FlexibleSpaceBar(
                  title: Text('How to choose your supplements?'),
                  background: Image(
                    image: AssetImage('images/supplements.png'),
                    fit: BoxFit.cover,
                  )),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.black,

                  child: Center(
                    child: Text('The active ingredient The world of supplementation goes beyond powdered proteins. The market has to offer supplements that act as fat burning enhancers or to solve nutritional imbalances, in order to improve the performance of the athlete, either at the time of training, or during daily activities of the day, as They can be, work. For that reason, it is important as a first point, to know how to choose the active ingredient. An athlete looking to gain muscle, should look for protein-based supplements, while another who is in the definition stage, could opt for an additional fat burner with caffeine, which act as stimulants and accelerate metabolism. As already mentioned before, everything depends on the type of objective of each person. Reading the label The label speaks a lot about the supplement that is thought to be acquired, because it contains not only the concentration of the active ingredient, but also other compounds that can be stored in the product. Some labels can even mention the place from which the active ingredient has been extracted, although not referring to the geographical location, but rather to the part of the animal or vegetable. Absorption of the active ingredient While the absorption time of the active ingredient is important to take advantage of the properties it provides, it is very difficult to find the time described on the product label, since most companies omit this small detail in the presentations of the supplements. Manufacturers must submit their products to dissolution tests to ensure that they can be absorbed properly and thus ensure their effectiveness. Allergen compounds It is very important to know if the products to choose have or not with ingredients that can unleash a sensibility in the organism of the one who thinks to consume them. For example, a person who is allergic to dairy products should avoid the consumption of supplements made in machines that use milk for the manufacture of others, or that already include lactose in the product, such as whey protein. Another of the most frequent consternations about supplements is their possible content of gluten, a wheat protein that causes unfavorable reactions in people suffering from celiac disease.In these cases, it is best to opt for products that include the legend hypoallergenic on the label, or those that mention specifically not contain some common allergenic ingredients such as wheat, gluten, lactose, nuts, etc. Lifetime of the products The pieces of cotton that are included.in the packaging of some vitamin supplements, or even drugs in the form of capsules or tablets are known as desiccants and their function is to act as a harmless for the absorption of moisture found inside of the container, to allow the pills to remain dry and in good condition for a longer time. However, the desiccant is only effective until the product is opened for the first time, so in doing this, the most recommended is to discard the cotton, since it will not be able to continue to absorb moisture any longer, so that all the accumulation It would fall on the pills, deteriorating its quality.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        // fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
