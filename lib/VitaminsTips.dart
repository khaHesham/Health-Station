import 'package:flutter/material.dart';

class VitaminsTips extends StatelessWidget {
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
                  title: Text('Vitamins and minerals'),
                  background: Image(
                    image: AssetImage('images/vitamins.png'),
                    fit: BoxFit.cover,
                  )),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.black,

                  child: Center(
                    child: Text('Vitamins and minerals are micronutrients required by the body to carry out a range of normal functions. However, these micronutrients are not produced in our bodies and must be derived from the food we eat. Vitamins are organic substances that are generally classified as either fat soluble or water soluble. Fat-soluble vitamins (vitamin A, vitamin D, vitamin E, and vitamin K) dissolve in fat and tend to accumulate in the body. Water-soluble vitamins (vitamin C and the B-complex vitamins, such as vitamin B6, vitamin B12, and folate) must dissolve in water before they can be absorbed by the body, and therefore cannot be stored. Any water-soluble vitamins unused by the body is primarily lost through urine. Minerals are inorganic elements present in soil and water, which are absorbed by plants or consumed by animals. While you’re likely familiar with calcium, sodium, and potassium, there is a range of other minerals, including trace minerals (e.g. copper, iodine, and zinc) needed in very small amounts. In the U.S., the National Academy of Medicine (formerly the Institute of Medicine) develops nutrient reference values called the Dietary Reference Intakes (DRIs) for vitamins and minerals. [1] These are intended as a guide for good nutrition and as a scientific basis for the development of food guidelines in both the U.S. and Canada. The DRIs are specific to age, gender, and life stages, and cover more than 40 nutrient substances. The guidelines are based on available reports of deficiency and toxicity of each nutrient. A diet that includes plenty of fruits, vegetables, whole grains, good protein packages, and healthful fats should provide most of the nutrients needed for good health. But not everyone manages to eat a healthful diet. Multivitamins can play an important role when nutritional requirements are not met through diet alone. Learn more about vitamin supplementation. \n Did you know? \n Vitamins and their precise requirements have been controversial since their discovery in the late 1800s and early 1900s. It was the combined efforts of epidemiologists, physicians, chemists, and physiologists that led to our modern day understanding of vitamins and minerals. After years of observation, experiments, and trial and error, they were able to distinguish that some diseases were not caused by infections or toxins—a common belief at the time—but by vitamin deficiencies. [2] Chemists worked to identify a vitamin’s chemical structure so it could be replicated. Soon after, researchers determined specific amounts of vitamins needed to avoid diseases of deficiency. In 1912, biochemist Casimir Funk was the first to coin the term “vitamin” in a research publication that was accepted by the medical community, derived from “vita” meaning life, and “amine” referring to a nitrogenous substance essential for life. [3] Funk is considered the father of vitamin therapy, as he identified nutritional components that were missing in diseases of deficiency like scurvy (too little vitamin C), beri-beri (too little vitamin B1), pellagra (too little vitamin B3), and rickets (too little vitamin D). The discovery of all vitamins occurred by 1948.Vitamins were obtained only from food until the 1930s when commercially made supplements of certain vitamins became available. The U.S government also began fortifying foods with specific nutrients to prevent deficiencies common at the time, such as adding iodine to salt to prevent goiter, and adding folic acid to grain products to reduce birth defects during pregnancy. In the 1950s, most vitamins and multivitamins were available for sale to the general public to prevent deficiencies, some receiving a good amount of marketing in popular magazines such as promoting cod liver oil containing vitamin D as bottled sunshine.',
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
