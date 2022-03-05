import 'package:flutter/material.dart';

class MetapolismTips extends StatelessWidget {
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
              title: Text('How to accelerate your metabolism?'),
              background: Image(
                image: AssetImage('images/food1.png'),
                fit: BoxFit.cover,
              )),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              color: Colors.black,

              child: Center(
                child: Text('The metabolism is defined as a physical-chemical process that takes place in the body and whose function is to process (to use a simple term) the ingested food to take advantage of its energies and nutrients. Virtually the metabolism is responsible for regulating our daily functions so that their role is essential to maintain a balanced life. The higher the metabolic rate, the greater the energy consumption and nutrient assimilation, and therefore, the greater and better results in all aspects of life: intellectual, physical, emotional, etc. At the same time, talking about metabolism comes with the package talking about fat combustion, and the process that takes advantage of the energies found in food. A person with a better metabolic rate can use higher fat reserves, since it requires more energy to maintain their vital functions, from the most basic (such as thinking or breathing) to the most complex (digest food, repair damaged tissues, etc.) Hence the reason why talking about metabolism is so important when we start our sporting life, because in summary, an improvement in this will help us obtain more optimal results. 1. Increase muscle volume Increase muscle volume is the first step to take into account when seeking to improve the ratio of metabolic rate. This is where the workouts with loads develop a fundamental role, since it is through the heavy work that the muscles can develop, as part of a defense mechanism to survive in a hostile environment. By having a greater muscle mass the basal metabolism increases and therefore the caloric intake of the body becomes greater, allowing the combustion of fat, even when at rest is much more effective compared to an average person. 2. Improve your diet Someone who trains with a lot of effort but who leads a poor and careless dietary regime, very few chances of success will have, because it is through the nutrients that the body can perform its internal functions in an adequate way to show optimal external results. To give an example we can take the case of an athlete who seeks to eliminate excess body fat. Oddly enough, the most recommended strategy to follow is to eat a diet high in healthy fats and proteins, which will allow the body to enter a state of ketosis where accumulated fat will act as the main source of energy. 3. Train with greater intensity When we talk about burning fats, cardio is considered as the alternative part excellence, being that in fact there are many more effective methods to get rid of the accumulated caloric surplus in the body. In this case, the option that is positioned above all is HIIT, or High Intensity Interval Training, by its acronym in English, with which it is possible to burn more calories in a 15-minute session than in a cardio workout Regular for 40 minutes. But beware, that this premise does not refer to the fact that with HIIT there is a huge caloric consumption in neither time, but this is where the fact that they import more burnt calories throughout the day than those burned during the training. When carrying out a session of HIIT, an effect known as COPD is triggered in the body and it refers to the Pöst-Training Oxygen Consumption (for its acronym in English) and that it is a process that leads the body to have a greater consumption energy by requiring more oxygen during the hours following exercise. In this way, HIIT and consequently, COPD, can be interpreted as the definitive way to burn fat while watching television. Of course, it must be taken into account that HIIT is a very intense training method and therefore, under no circumstances is it recommended to be carried out by ple suffering from heart problems, being overweight or having a low physical condition. Conclusions. As you can already imagine, having a healthy body costs, and not only economically, but also physically and mentally. When it comes to losing fat there are many factors that must be taken into account to achieve total success progressively and thus not stagnate to throw in the towel when you are already halfway. In spite of how complicated it can be at first, in the long run, you will see that knowing all the secrets (which should not be secret) for effective fat burning, will not represent even the slightest obstacle to achieve your goal. ',
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
