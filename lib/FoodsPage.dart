import 'package:flutter/material.dart';
import 'ResultsSearch.dart';
import 'NutritionList.dart';

const ActiveCardColor = Color(0xFF323244);
const BottomContainerColor = Color(0xFFEB1555);
const InactiveCardColor = Color(0xFF24263B);
const backgroundColor = Color(0xFF1D2136);

class FOOD {
  String Name;
  double cal;
  double fat;
  double protein;
  double carb;
  FOOD(String N, double ca, double fa, double pro, double car) {
    Name = N;
    cal = ca;
    fat = fa;
    protein = pro;
    carb = car;
  }
}

List<FOOD> Nutri = [
  FOOD('Cornstarch', 381, 0.1, 0.26, 91.27),
  FOOD('Nuts,pecans', 691, 72, 9.17, 13.86),
  FOOD('Eggplant,raw', 25, 0.2, 0.98, 5.88),
  FOOD('Teff,uncooked', 367, 2.4, 13.30, 73.13),
  FOOD('Sherbet,orange', 144, 2, 1.10, 30.40),
  FOOD('Cauliflower,raw', 25, 0.3, 1.92, 4.97),
  FOOD('Taro leaves,raw', 42, 0.7, 4.98, 6.70),
  FOOD('Lamb,raw,ground', 282, 23, 16.56, 0.00),
  FOOD('Cheese,camembert', 300, 24, 19.80, 0.46),
  FOOD('Vegetarian fillets', 290, 18, 23.00, 9.00),
  FOOD('PACE,Picante Sauce', 25, 0, 0.00, 6.25),
  FOOD('Goji berries,dried', 349, 0.4, 14.26, 77.06),
  FOOD('Mango nectar,canned', 51, 0.1, 0.11, 13.12),
  FOOD('Crackers,rusk toast', 407, 7.2, 13.50, 72.30),
  FOOD('Chicken,boiled,feet', 215, 15, 19.40, 0.20),
  FOOD('Quail,raw,meat only', 134, 4.5, 21.76, 0.00),
  FOOD('Pie,lemon,fried pies', 316, 16, 3.00, 42.60),
  FOOD('Peppers,raw,jalapeno', 29, 0.4, 0.91, 6.50),
  FOOD('Winged bean tuber,raw', 148, 0.9, 11.60, 28.10),
  FOOD('Salami,turkey,cooked', 172, 9.2, 19.20, 1.55),
  FOOD('Grapes,raw,muscadine', 57, 0.5, 0.81, 13.93),
  FOOD('Nuts,raw,ginkgo nuts', 182, 1.7, 4.32, 37.60),
  FOOD('Spices,ground,savory', 272, 5.9, 6.73, 68.73),
  FOOD('Candies,sesame crunch', 516, 33, 11.60, 50.30),
  FOOD('Cheese,low fat,cream', 201, 15, 7.85, 8.13),
  FOOD('PACE,Green Taco Sauce', 25, 0, 0.00, 6.25),
  FOOD('Syrup,Canadian,maple', 270, 0, 0.00, 67.38),
  FOOD('Ostrich,raw,top loin', 119, 3, 21.67, 0.00),
  FOOD('Chewing gum,sugarless', 268, 0.4, 0.00, 94.80),
  FOOD('Nuts,dried,pine nuts', 673, 68, 13.69, 13.08),
  FOOD('Pasta,unenriched,dry', 371, 1.5, 13.04, 74.67),
  FOOD('McDONALDS,Side Salad', 20, 0.2, 1.03, 4.30),
  FOOD('Cookies,Marie biscuit', 406, 11, 7.05, 70.54),
  FOOD('Broccoli,raw,chinese', 30, 0.8, 1.20, 4.67),
  FOOD('McDONALDS Hash Brown', 271, 16, 2.48, 28.56),
  FOOD('Agave,raw(Southwest)', 68, 0.2, 0.52, 16.23),
  FOOD('Emu,raw,outside drum', 103, 0.5, 23.08, 0.00),
  FOOD('Nuts,dried,beechnuts', 576, 50, 6.20, 33.50),
  FOOD('Currants,dried,zante', 283, 0.3, 4.08, 74.08),
  FOOD('Lentils,raw,sprouted', 106, 0.6, 8.96, 22.14),
  FOOD('Gravy,mix,dry,onion', 322, 3, 9.00, 67.64),
  FOOD('Pie,fruit,fried pies', 316, 16, 3.00, 42.60),
  FOOD('Snacks,cakes,popcorn', 384, 3.1, 9.70, 80.10),
  FOOD('Snack,Mixed Berry Bar', 383, 11, 13.16, 58.84),
  FOOD('Fish,raw,sheepshead', 108, 2.4, 20.21, 0.00),
  FOOD('Apples,with skin,fuji,raw', 63, 0.2, 0.20, 15.22),
  FOOD('Apples,with skin,gala,raw', 57, 0.1, 0.25, 13.68),
  FOOD('Apples,with skin,raw', 52, 0.2, 0.26, 13.81),
  FOOD('Apples,without skin,raw', 48, 0.1, 0.27, 12.76),
  FOOD('Asparagus,raw', 20, 0.1, 2.20, 3.88),
  FOOD('Avocados,raw', 160, 15, 2.00, 8.53),
  FOOD('Bacon and beef sticks', 517, 44, 29.10, 0.80),
  FOOD('Bacon bits,meatless', 476, 26, 32.00, 28.60),
  FOOD('Bacon,low sodium,turkey', 253, 20, 13.33, 4.80),
  FOOD('Bagels,whole grain white', 255, 0, 9.30, 54.52),
  FOOD('Bananas,raw', 89, 0.3, 1.09, 22.84),
  FOOD('Barley,raw,pearled', 352, 1.2, 9.91, 77.72),
  FOOD('Basil,fresh', 23, 0.6, 3.15, 2.65),
  FOOD('Beans,raw,', 345, 2.6, 22.00, 60.70),
  FOOD('Beef sausage,pre-cooked', 405, 38, 15.50, 0.03),
  FOOD('Beef,cooked,70% lean', 241, 15, 23.87, 0.00),
  FOOD('Beef,raw,75% lean', 293, 25, 15.76, 0.00),
  FOOD('Beef,boiled,kidney', 157, 5.3, 27.28, 0.00),
  FOOD('Beef,boiled heart', 179, 6, 31.29, 0.00),
  FOOD('Beef,boiled tongue', 271, 20, 18.31, 3.68),
  FOOD('Beef,dried,cured', 153, 1.9, 31.10, 2.76),
  FOOD('Blackberries,raw', 43, 0.5, 1.39, 9.61),
  FOOD('Blueberries,raw,wild', 61, 0.8, 1.22, 12.31),
  FOOD('Bread,multi-grain', 265, 4.2, 13.36, 43.34),
  FOOD('Bread,oatmeal', 269, 4.4, 8.40, 48.50),
  FOOD('Bread,wheat', 267, 3.2, 10.72, 48.68),
  FOOD('Bread,whole-wheat', 262, 1.7, 9.80, 55.89),
  FOOD('Broccoli,raw', 34, 0.4, 2.82, 6.64),
  FOOD('BURGERKING,Cheeseburger', 286, 15, 14.57, 23.71),
  FOOD('BURGERKING,Chicken Strips', 292, 15, 18.20, 20.49),
  FOOD('BURGERKING,Double Cheeseburger', 282, 16, 16.83, 17.43),
  FOOD('BURGERKING,Egg and Cheese,CROISSAN', 308, 22, 12.09, 15.90),
  FOOD('BURGERKING,french fries', 280, 12, 3.23, 38.70),
  FOOD('BURGERKING,french toast sticks', 349, 18, 6.00, 41.21),
  FOOD('BURGERKING,Hamburger', 261, 11, 14.85, 26.76),
  FOOD('BURGERKING,Hash Brown Rounds', 302, 19, 2.80, 29.37),
  FOOD('BURGERKING,no cheese,2xWHOPPER', 252, 16, 13.94, 13.74),
  FOOD('BURGERKING,no cheese,WHOPPER', 233, 13, 10.74, 18.55),
  FOOD('BURGERKING,Onion Rings', 417, 25, 3.86, 43.58),
  FOOD('BURGERKING,Original Chicken Sandwich', 286, 15, 12.14, 26.22),
  FOOD('BURGERKING,Premium Fish Sandwich', 260, 12, 10.29, 26.69),
  FOOD('BURGERKING,Vanilla Shake', 168, 8.7, 3.19, 19.03),
  FOOD('BURGERKING,with cheese,2xWHOPPER', 266, 17, 14.47, 13.52),
  FOOD('BURGERKING,with cheese,WHOPPER', 250, 15, 11.19, 16.70),
  FOOD('Butter,salted', 717, 81, 0.85, 0.06),
  FOOD('Cabbage,raw', 25, 0.1, 1.28, 5.80),
  FOOD('Carrots,raw', 41, 0.2, 0.93, 9.58),
  FOOD('Celtuce,raw', 18, 0.3, 0.85, 3.65),
  FOOD('Chayote,raw,fruit', 19, 0.1, 0.82, 4.51),
  FOOD('Cheese,mozzarella', 248, 12, 11.47, 23.67),
  FOOD('Cheese,1% milkfat,cottage', 72, 1, 12.39, 2.72),
  FOOD('Cheese,cheddar', 404, 33, 22.87, 3.09),
  FOOD('Cheese,cheshire', 387, 31, 23.37, 4.78),
  FOOD('Cheese,cream', 350, 34, 6.15, 5.52),
  FOOD('Cheese,edam', 357, 28, 24.99, 1.43),
  FOOD('Cheese,fat free,cream', 105, 1, 15.69, 7.66),
  FOOD('Cheese,fontina', 389, 31, 25.60, 1.55),
  FOOD('Cheese,gjetost', 466, 30, 9.65, 42.65),
  FOOD('Cheese,gouda', 356, 27, 24.94, 2.22),
  FOOD('Cheese,grated,parmesan', 420, 28, 28.42, 13.91),
  FOOD('Cheese,gruyere', 413, 32, 29.81, 0.36),
  FOOD('Cheese,hard type,goat', 452, 36, 30.52, 2.17),
  FOOD('Cheese,hard,parmesan', 392, 26, 35.75, 3.22),
  FOOD('Cheese,limburger', 327, 27, 20.05, 0.49),
  FOOD('Cheese,monterey', 373, 30, 24.48, 0.68),
  FOOD('Cheese,muenster', 368, 30, 23.41, 1.12),
  FOOD('Cheese,neufchatel', 253, 23, 9.15, 3.59),
  FOOD('Cheese,roquefort', 369, 31, 21.54, 2.00),
  FOOD('Cheese,swiss', 393, 31, 26.96, 1.44),
  FOOD('Cherries,raw,sweet', 63, 0.2, 1.06, 16.01),
  FOOD('Chewing gum', 360, 0.3, 0.00, 96.70),
  FOOD('chicken', 126, 1.6, 5.65, 22.46),
  FOOD('Chicken,breast meat', 144, 3.6, 28.04, 0.00),
  FOOD('Chicken,raw,liver', 119, 4.8, 16.92, 0.73),
  FOOD('Chocolate,70-85% cacao dark', 598, 43, 7.79, 45.90),
  FOOD('CHICK-FILA,chicken sandwich',	249,	11,	16.28 ,	20.89 ),
  FOOD('CHICK-FIL-A,Chick-n-Strips',	228,	11,	21.40 ,	10.39 ),
FOOD('CHICK-FILA,hash browns',	301,	19,	3.00 ,	30.51 ),
FOOD('Chicory roots,raw',	72,	0.2,	1.40 ,	17.51 ),
FOOD('Cocoa,unsweetened,dry powder',	228,	14,	19.60 ,	57.90 ),
FOOD('Corn grain,yellow',	365,	4.7,	9.42 ,	74.26 ),
FOOD('Cowpeas,raw,leafy tips',	29,	0.3,	4.10 ,	4.82),
FOOD('Dock,raw'	,22	,0.7,	2.00 ,	3.20 ),

  FOOD('DOMINO\'S 14"Cheese Pizza,Classic', 	257,	9,	10.80 ,	33.24 ),
  FOOD('DOMINO\'S 14"Cheese Pizza,Crunchy', 	298,	15,	12.33 ,	28.18 ),
  FOOD('DOMINO\'S 14"Cheese Pizza,Ultimate', 	265	,9.8,	10.76 ,	33.48 ),
FOOD ('DOMINO\'S 14"Pepperoni Pizza,Classic', 	273,	11,	11.25, 	31.86 ),
FOOD ('DOMINO\'S 14"Pepperoni Pizza,Crunchy',	328,	19,	13.88 ,	25.35 ),
FOOD('DOMINO\'S 14" Pepperoni Pizza,Ultimate', 	283	,12,	11.52,	31.89 ),
FOOD('DOMINO\'S 14" Sausage Pizza,Classic', 	273	,11,	11.08 ,	31.84 ),
FOOD('DOMINO\'S 14" Sausage Pizza,Crunchy', 	319,	19,	12.77 ,	25.30),
FOOD('DOMINO\'S 14" Sausage Pizza,Ultimate', 	277	,12,	11.03, 	31.17 ),
FOOD( 'Duck,raw,liver,domesticated',	136	,4.6,	18.74, 	3.53, ),
FOOD('Duck,raw,meat only,breast',123,	4.3,	19.85, 	0.00 ),
FOOD('Egg,fresh,raw,whole',	143,	9.5,	12.56,	0.72 ),
FOOD('Egg,raw,fresh,whole,duck',	185	,14,	12.81, 	1.45 ),
FOOD(  'Egg,raw,fresh,whole,goose',	185	,13,	13.87 ,	1.35 ),
FOOD(  'Egg,raw,fresh,whole,quail',	158,	11,	13.05 ,	0.41 ),
FOOD( 'Egg,raw,fresh,whole,turkey',	171,	12,	13.68 ,	1.15 ),
FOOD('Eggplant,pickled',49	,0.7,	0.90 ,	9.77 ),
FOOD(   'Fish,raw,bluefish',	124,	4.2,	20.04, 	0.00 ),
FOOD(   'Fish,raw,burbot',	90	,0.8,	19.31, 	0.00 ),
FOOD(   'Fish,raw,butterfish',	146,	8,	17.28, 	0.00),
FOOD(   'Fish,raw,carp',	127,	5.6,	17.83, 	0.00),
FOOD(   'Fish,raw,chinook,salmon',	179,	10,	19.93, 	0.00 ),
FOOD(   'Fish,raw,chum,salmon',	120	,3.8,	20.14, 	0.00 ),
FOOD(   'Fish,raw,cisco',	98,	1.9,	18.99, 	0.00),
FOOD(   'Fish,raw,cusk',	87,	0.7,	18.99, 	0.00),
FOOD(  'Fish,raw,european,anchovy',	131,	4.8,	20.35, 0.00),
FOOD(   'Fish,raw,mackerel',	205,	14,	18.60, 	0.00 ),
FOOD(   'Garlic,raw',	149,	0.5,	6.36 ,	33.06 ),
FOOD(  'Grapes,raw,american type (slip skin)',	67,	0.4,	0.63 ,	17.15 ),
FOOD(  'Grapes,raw,muscadine',	57,	0.5,	0.81 ,	13.93 ),
FOOD(   'Grapes,raw,red or green',	69	,0.2,	0.72 ,	18.10 ),
FOOD(   'Ground turkey,raw',	148,	7.7,	19.66 ,	0.00 ),
FOOD(  'Honey',	304,	0,	0.30 ,	82.40 ),
FOOD(  'Hummus,home prepared',	177	,8.6,	4.86 ,	20.12 ),
FOOD(  'Lamb,raw, 85% lean',	255,	21,	17.14, 	0.00 ),
FOOD(  'Lentils,raw',	352,	1.1,	24.63 ,63.35 ),
FOOD(  'Mangos,raw',	60	,0.4,	0.82 ,	14.98 ),
FOOD(  'McDONALD\'S Bacon Ranch Salad + Crispy Chicken',	122	,6.3,	8.82, 	6.08 ),
FOOD(   'McDONALD\'S,Bacon Egg & Cheese Biscuit',	304,	19,	13.45, 	22.26 ),
FOOD(   'McDONALD\'S,Bacon Ranch Salad with Grilled Chicken',	81	,3.1,	10.28 ,	3.64 ),
FOOD(   'McDONALD\'S,Bacon Ranch Salad without chicken',	61,	3.6,	4.14 ,	4.20 ),
FOOD(   'McDONALD\'S,Baked Apple Pie',	323,	16,	3.07 ,	43.62),
FOOD(   'McDONALD\'S,Barbeque Sauce',	165	,1.2,	1.55 ,	36.93),
FOOD(  'McDONALD\'S,BIG BREAKFAST',	285,	19,	10.16, 17.50 ),
FOOD(  'McDONALD\'S,BIG MAC'	,257	,15,	11.82 ,	20.08 ),
FOOD(  'McDONALD\'S,Cheeseburger',	263,	12,	12.97, 	27.81),
FOOD(   'McDONALD\'S,Chicken McNUGGETS',	302,	20,	15.79, 	15.09),
FOOD(   'McDONALD\'S,Creamy Ranch Sauce',	468,	52,	1.11 ,	3.49 ),
FOOD(   'McDONALD\'S,Crispy,RANCH SNACK WRAP',	275,	15,	11.48 ,	23.22 ),
FOOD(   'McDONALD\'S,Double Cheeseburger',	282,	16,	15.50, 	18.79 ),
FOOD(   'McDONALD\'S,DOUBLE QUARTER POUNDER with Cheese',	262	,16,	16.96, 	14.43 ),
FOOD(   'McDONALD\'S,Egg&Cheese McGRIDDLES,Bacon',	272,	13,	12.03 ,	26.19 ),
FOOD(   'McDONALD\'S,Egg&Cheese McGRIDDLES,Sausage',	283,	18,	10.77 ,	22.04 ),
FOOD(   'McDONALD\'S,Egg McMUFFIN',	228,	9.7,	13.64, 21.67 ),
FOOD(   'McDONALD\'S,FILET-O-FISH',	282	,15,	11.26 ,26.39 ),
FOOD(   'McDONALD\'S,french fries',	323,	15,	3.41,	42.58 ),
FOOD(  'McDONALD\'S,Fruit Yogurt Parfait',	105,	1.3	,2.73 ,	20.72 ),
FOOD(  'McDONALD\'S,FruitYogurt Parfait (without granola)',	90,	1.1,	2.47, 	17.67 ),
FOOD(  'McDONALD\'S,Grilled,RANCH SNACK WRAP',	222,	10,	13.77 ,	18.43 ),
FOOD(  'McDONALD\'S,Hamburger',	264	,10,	12.92 ,	30.28 ),
FOOD(  'McDONALD\'S,Hash Brown',	271,	16,	2.48 ,	28.56 ),
FOOD(  'McDONALD\'S,Hot Caramel Sundae',	188,	4.9	,3.58 ,	33.36 ),
FOOD(  'McDONALD\'S,Hot Fudge Sundae',	186,	5.9,	4.14 ,	30.05 ),
FOOD(  'McDONALD\'S,Hot Mustard Sauce',	190,	7.3,	2.60 ,	29.08 ),
FOOD(  'McDONALD\'S,Hotcakes(plain)',	228,	5.8,	6.00 ,	38.27 ),

FOOD(   'McDONALD\'S,Low Fat Caramel Sauce',	313,	3.3,	1.89 ,	71.53 ),
FOOD(   'McDONALD\'S,McCHICKEN Sandwich',	273,	13,	10.43 ,	27.97 ),
FOOD(   'McDONALD\'S,McFLURRY with M&M\'S CANDIES',	177,	6.5,	4.02 ,	26.82 ),
FOOD(   'McDONALD\'S,McFLURRY with OREO cookies',	165,	5.7,	3.97 ,	25.55 ),
FOOD(   'McDONALD\'S,NEWMAN\'S OWN Cobb Dressing',	196	,14,	1.69 ,	15.49 ),
FOOD(   'McDONALD\'S,NEWMAN\'S OWN Creamy Caesar Dressing',	319,	32,	3.56 ,6.85 ),
FOOD(   'McDONALD\'S,NEWMAN\'S OWN Low Fat Balsamic Vinaigrette',	86	,5.9,	0.19 ,	24.65 ),
FOOD(   'McDONALD\'S,NEWMAN\'S OWN Ranch Dressing',	313	,27,	2.62 ,	16.75 ),
FOOD(   'McDONALD\'S,Peanuts (for Sundaes)',	640,	53,	28.04, 	16.23 ),
FOOD(  'McDONALD\'S,Premium Crispy Chicken Classic Sandwich',	228,	8.7,	12.08 ,	25.46 ),
FOOD(  'McDONALD\'S,Premium Crispy Chicken Club Sandwich',	250,	12,	15.38 ,	22.61 ),
FOOD(  'McDONALD\'S,Premium Crispy Chicken Ranch BLT Sandwich',	244,	9.6,	14.70, 	24.93 ),
FOOD(  'McDONALD\'S,Premium Grilled Chicken Classic Sandwich',	183,	4.3,	14.16 ,	22.28 ),
FOOD(   'McDONALD\'S,Premium Grilled Chicken Club Sandwich',	221,	8.1	,17.19 ,	19.87 ),
FOOD(   'McDONALD\'S,Premium Grilled Chicken Ranch BLT Sandwich',	204,	5.4,	16.70 ,	21.91 ),
FOOD(   'McDONALD\'S,QUARTER POUNDER',	244,	12,	14.10 ,	22.17 ),
FOOD(   'McDONALD\'S,QUARTER POUNDER with Cheese',	258,	14,	14.59 ,	19.95 ),
FOOD(   'McDONALD\'S,Sausage Biscuit',	376,	25,	9.62 ,	27.20 ),
FOOD(  'McDONALD\'S,Sausage Biscuit with Egg',	311,	22,	11.27 ,	19.28 ),
FOOD(  'McDONALD\'S,Sausage Burrito',	277,	16,	11.10 ,	22.97 ),
FOOD(  'McDONALD\'S,Sausage McGRIDDLES',	312,	18,	8.41 ,	31.25 ),
FOOD(   'McDONALD\'S,Sausage McMUFFIN',	333,	21,	12.66 ,	24.52 ),
FOOD(  'McDONALD\'S,Sausage McMUFFIN with Egg',	274,	18,	12.59 ,	17.28 ),
FOOD(   'McDONALD\'S,Side Salad',	20,	0.2,	1.03 ,	4.30 ),
FOOD(   'McDONALD\'S,Southern Style Chicken Biscuit',	304,	15,	11.93 ,	30.56 ),
FOOD(  'McDONALD\'S,Spicy Buffalo Sauce',	142,	15,	0.54 ,	1.81),
FOOD(  'McDONALD\'S,Strawberry Sundae',	158,	4,	3.19 ,	28.09 ),
FOOD(   'McDONALD\'S,Sweet\'N Sour Sauce',	170,	1.1,	0.66 ,	39.38 ),
FOOD(   'McDONALD\'S,Tangy Honey Mustard Sauce',	167,	5.8,	1.32 ,	28.81 ),
FOOD(   'McDONALD\'S,Vanilla Reduced Fat Ice Cream Cone',	162	,4.9,	4.24 ,	26.36 ),
FOOD(   'Melon balls',	33,	0.3,	0.84 ,	7.94 ),
FOOD(   'Milk, 3.7% milkfat, fluid',	64	,3.7,	3.28 ,	4.65 ),
FOOD(   'Milk, 1% fat,fluid',	42	,1,3.37, 	4.99 ),
FOOD(   'Mushrooms,raw,white',	22,	0.3,	3.09 ,	3.26 ),
FOOD(  'Nuts,almonds',	579,	50,	21.15 ,	21.55 ),
FOOD(  'Nuts,dried,acorns',	509	,31,	8.10 ,	53.66 ),
FOOD(  'Nuts,dried,beechnuts',	576,	50,	6.20 ,	33.50 ),
FOOD(  'Nuts,dried,black,walnuts',	619,	59,	24.06 ,	9.58 ),
FOOD(  'Nuts,dried,butternuts',	612,	57,	24.90 ,	12.05 ),
FOOD(   'Nuts,dried, chinese, chestnuts',	363,	1.8,	6.82 ,	79.76 ),
FOOD(   'Nuts,dried,ginkgo nuts',	348,	2,	10.35, 	72.45 ),
FOOD(   'Nuts,dried,hickorynuts',	657,	64	,12.72 ,	18.25 ),
FOOD(  'Nuts,dried,japanese,chestnuts',	360,	1.2,	5.25 ,	81.43 ),
FOOD(  'Nuts,dried,pilinuts',	719,	80,	10.80 ,	3.98 ),
FOOD(   'Nuts,dried,pine nuts',	673,	68,	13.69 ,	13.08 ),
FOOD(   'Nuts,dried,pinyon,pine nuts',	629	,61	,11.57 ,	19.30 ),
FOOD(  'Nuts,pecans',	691,	72,	9.17 ,	13.86 ),
FOOD(   'Oat bran,cooked',	40,	0.9,	3.21 ,	11.44 ),
FOOD(   'Oats',	389	,6.9,	16.89, 	66.27 ),
FOOD(   'Onions,raw'	,40	,0.1,	1.10 ,	9.34 ),
FOOD( 'Oranges, with peel, raw',	63,	0.3,	1.30 ,	15.50 ),
FOOD( 'PAPA JOHN\'S 14"Cheese Pizza, Original',260,	9.3,	11.53 ,	32.74 ),
FOOD( 'PAPA JOHN\'S 14"Cheese Pizza, Thin',	295,	16,	12.29 ,	26.26 ),
FOOD( 'PAPA JOHN\'S 14"Pepperoni Pizza, Original',	275,	12,	11.97 ,	30.04 ),
FOOD( 'PAPA JOHN\'S 14"The Works Pizza,Original',	240,	10,	10.27 ,	26.69 ),
FOOD( 'Parmesan cheese topping,fat free',	370	,5,	40.00, 	40.00 ),
FOOD( 'Peaches,raw,yellow',	39,	0.3,	0.91 ,	9.54 ),
FOOD( 'Peanuts,raw',	567	,49,	25.80 ,	16.13 ),
FOOD( 'Potatoes,raw',	69	,0.1,	1.68 ,	15.71 ),
FOOD('Potatoes,boiled',	87	,0.1,1.87, 	20.13 ),
FOOD( 'Pumpkin,raw',	26	,0.1,	1.00 ,	6.50 ),
FOOD( 'Quinoa,cooked',	120	,1.9,	4.40 ,	21.30 ),
FOOD('Quinoa,uncooked',	368,	6.1,	14.12, 	64.16 ),
FOOD( 'Rice,cooked,medium-grain,white',	130,	0.2,	2.38 ,	28.59 ),
FOOD('KFC, biscuit',	358	,17,	7.50 ,	43.55 ),
FOOD('KFC,Coleslaw',	144,	8.6,	0.91 ,	15.65 ),
FOOD('KFC,Crispy Chicken Strips',	274,	15,	20.25 ,	13.66 ),
FOOD('KFC,meat and skin with breading,Breast,EXTRA CRISPY',	268,	17,	21.24 ,	8.47 ),
FOOD('KFC,meat and skin with breading,Breast, ORIGINAL RECIPE',	231,	13,	21.94 ,	6.28 ),
FOOD('KFC,meat and skin with breading,Drumstick,EXTRA CRISPY',274,	18,	20.62 ,	7.96 ),
FOOD('KFC,meat and skin with breading,Drumstick,ORIGINAL RECIPE',239,	14,	22.30 ,	5.39 ),
FOOD('KFC,meat and skin with breading,Thigh,EXTRA CRISPY',309	,22,	17.17 ,	10.30 ),
FOOD('KFC,meat and skin with breading,Thigh, ORIGINAL RECIPE',269,	18,	18.90 ,	8.46 ),
FOOD('KFC,meat and skin with breading, Wing, EXTRA CRISPY', 337,	23,	20.80 ,	11.66 ),
FOOD('KFC,meat and skin with breading,Wing, ORIGINAL RECIPE',	297,	19,	21.70 ,	9.93 ),
FOOD('KFC,Popcorn Chicken',	351,	22,	17.67 ,	21.18 ),
FOOD('KFC,skin and breading removed,meat only,Breast,EXTRA CRISPY', 153,	4.8,	27.25 ,	0.25 ),
FOOD('KFC,skin and breading removed,meat only, Breast,ORIGINAL RECIPE', 	149,	4.6,	26.89 ,	0.00 ),
FOOD('KFC,skin and breading removed,meat only,Drumstick,EXTRA CRISPY',	170	,7.4,	25.90 ,	0.00 ),
FOOD('KFC,skin and breading removed,meat only,Drumstick,ORIGINAL RECIPE',175,	7.7,	26.30, 	0.11 ),
FOOD('KFC,skin and breading removed,meat only,Thigh, EXTRA CRISPY', 	179,	10,	22.41, 	0.00 ),
FOOD('KFC,skin and breading removed,meat only,Thigh,ORIGINAL RECIPE',	175,	9.3,	22.78,	0.01 ),
FOOD('KFC,skin and breading removed,meat only,Wing,EXTRA CRISPY', 	236,	12,	28.67 ,	2.97 ),
FOOD('KFC,skin and breading removed,meat only,Wing,ORIGINAL RECIPE', 	216,	10,	28.65 ,	1.76 ),
FOOD('KFC,skin and Breading,EXTRA CRISPY', 	464,	37,	10.96 ,	22.54 ),
FOOD('KFC,Skin and Breading,ORIGINAL RECIPE',384,	28,	14.17 ,	18.79 ),

];

List<FOOD> foodlistonsearch = [];

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  String foodName;
  int row;
  int index = 0;
  int index2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _textEditingController,
          decoration: InputDecoration(
              filled: true,
              hintText: 'Enter Food Name',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)))),
          onChanged: (value) {
            setState(() {
              foodlistonsearch = Nutri.where((element) =>
                      element.Name.toLowerCase().contains(value.toLowerCase()))
                  .toList();
            });
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                _textEditingController.clear();
                setState(() {
                  _textEditingController.text = ' ';
                });
              },
              icon: Icon(
                Icons.close,
              ))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/food background.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: _textEditingController.text.isNotEmpty &&
                foodlistonsearch.length == 0
            ? Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search_off,
                      size: 50,
                    ),
                    Text(
                      'No Result Found',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            : ListView.builder(
                itemCount: _textEditingController.text.isNotEmpty
                    ? foodlistonsearch.length
                    : Nutri.length,
                itemBuilder: (context, index) {
                  return GestureDetector(

                    onTap: () {

                      if (foodlistonsearch.isNotEmpty) {
                        index2 = Nutri.indexOf(foodlistonsearch[index]);
                      } else {
                        index2 = index;
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ResultsSearch(
                              index: index2,
                            );
                          },
                        ),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor:Color(0x101D2136),
                            child: Icon(
                              Icons.food_bank_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                _textEditingController.text.isNotEmpty
                                    ? foodlistonsearch[index].Name
                                    : Nutri[index].Name,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                  color: Colors.white,
                                )),
                          ),
                        )
                      ],
                    ),
                  );
                }),
      ),
    );
  }
}
