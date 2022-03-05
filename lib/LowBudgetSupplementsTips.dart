import 'package:flutter/material.dart';

class lowbudget extends StatelessWidget {
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
                  title: Text('The 4 supplements that you should consume if you have low budget'),
                  background: Image(
                    image: AssetImage('images/shaker.png'),
                    fit: BoxFit.cover,
                  )),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.black,

                  child: Center(
                    child: Text('Whether professionally or amateur, the consumption of supplements is very common in the world of fitness. And is that for decades, the industry has made us believe that to reach the limit of the body in terms of muscle mass growth is concerned, it is necessary to resort to the consumption of these substances. The fact of including this type of products in the diet is already at the discretion of each and if your case is that of an athlete who is starting with their training and want to consume supplements to improve, go ahead, you can always have many options, even if you have a very tight budget. For that reason we have decided to create this little guide that will help you to know the most important supplements on your way to the final transformation of your body.\n 1. Creatine\n\n It does not matter who you ask, but it is very likely that more than 90% of those who know the subject will tell you that the most important supplement for a good development of muscle mass is creatine. Yes, unlike what many believe, Whey protein does not provide as much benefit in relation to cost if we compare it with creatine, which in addition to its low price, is effective for:\n • Improve physical performance when. training\n• Speed up the muscle recovery process•\n Increase bone mineral density\n• Accelerate glucose consumption(increased metabolism)\n• Reduce oxidative stress due to free radicals that occur with high intensity workouts\n• Maximize mental performance Many studies claim that to achieve all these effects of creatine is necessary to consume up to 0.25 grams per kilogram of weight, which in summary refers to a person weighing 70 kilos must consume approximately 17.5 grams of creatine a day. If we take into account that the chicken breast provides only 3.4 grams of creatine per kilogram, reaching there commended figure is extremely difficult, if not impossible, even if we are willing to consume exuberant amounts of food in our day to day.\n 2. Protein\n\n Whether it is whey protein, soy protein, meat protein, etc., it is a highly recommended type of product for anyone who is starting out in the world of muscle building. Unlike creatine, the protein provides all the amino acids that the body requires to perform all its functions, including giving way to muscle growth. However, the reason why the consumption of creatine over protein is recommended is because the latter does not provide the necessary amounts of amino acids to: maximize the expected results. Come on, that the rest of essential amino acids can be obtained through the diet, while the amino acids necessary for the formation of creatine (L-arginine, Glycine and L-Methionine) are not so abundant, but simply sufficient for the average needs The protein powder can be obtained in any supplement store or sports stores, even in some gyms it is completely normal to see some boats for sale.\n 3. Fish oil and multivitamins \n\n Multivitamins, although not essential, can make the difference between optimal performance and mediocre performance. It is true that most of the vitamins and minerals are obtained through food, however, due to the hectic current pace of life that many of us have today, it is difficult to prepare more elaborate meals with a high variety of fruits and vegetables. They are responsible for providing these nutrients. This is where multivitamins come into play, which are even necessary for many people who, in addition to not training, do not pay much attention to the foods they consume on a daily basis.\n4. Pre-training\n\n If your budget allows it, you can even give higher priority to pre-workout supplements over multivitamins. This is because, as we mentioned before, vitamins and minerals can be easily obtained through the diet, while the benefits of a pre-workout supplement, we will hardly get them in this way. This is because supplements of this type are aimed at improving performance when performing routine exercises that may be overshadowed by the stress of everyday activities. In other words, a pre-training supplement not only helps to have a better performance, but also gives us that energy necessary to find the motivation that is often affected by the fatigue caused by the tasks of modern life.',
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
