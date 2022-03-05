import 'package:flutter/material.dart';

class Proteinsupplements extends StatelessWidget {
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
                  title: Text('Protein'),
                  background: Image(
                    image: AssetImage('images/protein.png'),
                    fit: BoxFit.cover,
                  )),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.black,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('What is it ? ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                           fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Proteins are essential molecules for the body in the growth and maintenance of its tissues, such as muscles, skin, hair, nails, internal organs and even blood; as well as for the formation of hormones such as testosterone and enzymes, essential substances to perform the most basic vital functions such as the creation of antibodies that protect the body. Whey protein or whey protein is one of the most popular supplements for gain muscle mass. Currently we can find in the pharmacy multiple versions of this product that usually vary mainly in the amount of protein they contain, depending on the process of isolation of the whey.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Types',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Remember always, that the higher the protein isolation, the higher the percentage of the same in the product, and therefore, the higher its price. There are three different types of whey protein, these being: Whey isolate: Stands out for be the one that has a higher protein percentage, hovering between 90 and 95%. The protein is isolated by more elaborated processes, resulting in a purer serum, without fats or lactose, being ideal for intolerant to it. Concentration of whey: For its preparation usually uses a protein isolation process, where many of the fats and carbohydrates in milk are neutralized in the form of lactose, although generally, they are usually not 100% free of it. Its protein concentrate rotates at an average of 75-80%, although there may be variations around 30 and 85%. It is the most popular and economical supplement, ideal for most athletes.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Recommendations',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Sleep well so that the nervous system and the muscles have time to recover. Rest properly, especially when more intense workouts are carried out. To take an adequate diet with constant meals to avoid hunger and with it the loss of muscle. Work all the muscles of the body (biceps, triceps, abdomen, buttocks, etc.) for an adequate formation of the figure. Take the proteins, even when training is not done, as it is important to maintain muscle mass. On days with no training, try to consume less fat and carbohydrates, while maintaining protein.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),


                ),
              ),
            ),
          ],
        ));
  }
}
