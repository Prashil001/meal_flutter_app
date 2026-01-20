import 'package:meal_app/models/category.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';

const List<Category> availableCategories = [
  Category(id: 'c1', title: 'South Indian', color: Colors.green),
  Category(id: 'c2', title: 'North Indian', color: Colors.orange),
  Category(id: 'c3', title: 'Street Food', color: Colors.red),
  Category(id: 'c4', title: 'Biryani', color: Colors.amber),
  Category(id: 'c5', title: 'Paneer', color: Colors.lightGreen),
  Category(id: 'c6', title: 'Seafood', color: Colors.cyan),
  Category(id: 'c7', title: 'Breakfast', color: Colors.yellow),
  Category(id: 'c8', title: 'Desserts', color: Colors.pink),
  Category(id: 'c9', title: 'Veg Curries', color: Colors.teal),
  Category(id: 'c10', title: 'Chicken', color: Colors.deepOrange),
  Category(id: 'c11', title: 'Mutton', color: Colors.brown),
  Category(id: 'c12', title: 'Snacks', color: Colors.indigo),
  Category(id: 'c13', title: 'Chatpata', color: Colors.purple),
  Category(id: 'c14', title: 'Tandoori', color: Colors.redAccent),
];


final List<Meal> dummyMeals = [
  // South Indian
  Meal(
    id: 'm1',
    categories: ['c1'],
    title: 'Masala Dosa',
    imageUrl: 'https://imgs.search.brave.com/tC_ZL_ddK4Rd7HIp-TuWAN8UizaAOnpuhEemo-xdKnE/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzE1LzYzLzcyLzIw/LzM2MF9GXzE1NjM3/MjIwNDVfRUxXWFo2/MVVGVTVYWlhZY2xv/b1p3ckFxd0N3Wkpn/NUYuanBn',
    ingredients: ['Rice', 'Urad Dal', 'Potatoes', 'Mustard seeds', 'Curry leaves', 'Onion', 'Green chillies'],
    steps: [
      'Soak rice and urad dal overnight',
      'Grind to smooth batter',
      'Cook potato masala with spices',
      'Spread batter on hot tawa',
      'Add masala filling and serve with sambar'
    ],
    duration: 45,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isVegetarian: true,
  ),
  
  // North Indian
  Meal(
    id: 'm2',
    categories: ['c2','c10'],
    title: 'Butter Chicken',
    imageUrl: 'https://imgs.search.brave.com/IKS4ythKm6h15c1daHpSMz0neIq_03-dMenBpBxoS_g/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzE2LzY0LzMzLzY5/LzM2MF9GXzE2NjQz/MzY5NjRfY0hMMkVP/RGxOaTVWaERrdThN/cEFCNnBBTERUNFZH/VEouanBn',
    ingredients: ['Chicken', 'Yogurt', 'Butter', 'Cream', 'Tomato puree', 'Garam masala', 'Cashews'],
    steps: [
      'Marinate chicken in yogurt and spices',
      'Cook chicken pieces till golden',
      'Make creamy tomato gravy with butter',
      'Simmer chicken in gravy',
      'Garnish with cream and serve hot'
    ],
    duration: 60,
    complexity: Complexity.challenging,
    affordability: Affordability.pricey,
    isVegetarian: false,
  ),
  
  // Street Food
  Meal(
    id: 'm3',
    categories: ['c3'],
    title: 'Pani Puri',
    imageUrl: 'https://imgs.search.brave.com/ZisfHSgWEkmXR_llseyUgswHHGP_1JNpv_KMky1WcR8/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/c2h1dHRlcnN0b2Nr/LmNvbS9pbWFnZS1w/aG90by9wYW5pLXB1/cmktZ29sZ2FwcGEt/cG9wdWxhci1pbmRp/YW4tMjYwbnctMTA2/OTQyMTkwNi5qcGc',
    ingredients: ['Puri', 'Boiled potatoes', 'Chickpeas', 'Tamarind water', 'Mint chutney', 'Spicy water'],
    steps: [
      'Make spicy mint water and tamarind water',
      'Prepare potato-chickpea filling',
      'Poke hole in puri center',
      'Add filling and pour flavored waters',
      'Eat immediately!'
    ],
    duration: 20,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isVegetarian: true,
  ),
  
  // Biryani
  Meal(
    id: 'm4',
    categories: ['c4'],
    title: 'Chicken Biryani',
    imageUrl: 'https://imgs.search.brave.com/1y9HkGOwvrzwJY93azX3GGyynsvwVk0H_j8v2MEAa94/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdDIu/ZGVwb3NpdHBob3Rv/cy5jb20vNTY1MzYz/OC8xMTQzMS9pLzQ1/MC9kZXBvc2l0cGhv/dG9zXzExNDMxODYy/OC1zdG9jay1waG90/by1jaGlja2VuLWJp/cnlhbmktd2l0aC15/b2d1cnQtZGlwLmpw/Zw',
    ingredients: ['Basmati rice', 'Chicken', 'Yogurt', 'Saffron', 'Fried onions', 'Mint', 'Ghee'],
    steps: [
      'Marinate chicken with yogurt and spices',
      'Parboil basmati rice with whole spices',
      'Layer chicken and rice in pot',
      'Add saffron water and fried onions',
      'Dum cook for 30 minutes'
    ],
    duration: 90,
    complexity: Complexity.hard,
    affordability: Affordability.pricey,
    isVegetarian: false,
  ),
  
  // Paneer
  Meal(
    id: 'm5',
    categories: ['c5'],
    title: 'Paneer Tikka Masala',
    imageUrl: 'https://imgs.search.brave.com/XrC6GP8lcibdfy9W0zjYd1DwRkeIkFe4N9FG0k3fG0s/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMucGV4ZWxzLmNv/bS9waG90b3MvMzA4/NTg0MDIvcGV4ZWxz/LXBob3RvLTMwODU4/NDAyL2ZyZWUtcGhv/dG8tb2YtZGVsaWNp/b3VzLXBhbmVlci10/aWtrYS1tYXNhbGEt/ZGlzaC1jbG9zZS11/cC5qcGVnP2F1dG89/Y29tcHJlc3MmY3M9/dGlueXNyZ2ImZHBy/PTEmdz01MDA',
    ingredients: ['Paneer', 'Bell peppers', 'Onion', 'Tomato gravy', 'Cream', 'Kasuri methi'],
    steps: [
      'Marinate paneer and veggies',
      'Grill on skewers till golden',
      'Make rich tomato gravy',
      'Add grilled paneer to gravy',
      'Finish with cream and kasuri methi'
    ],
    duration: 50,
    complexity: Complexity.challenging,
    affordability: Affordability.pricey,
    isVegetarian: true,
  ),
  
  // Breakfast
  Meal(
    id: 'm6',
    categories: ['c7'],
    title: 'Poha',
    imageUrl: 'https://imgs.search.brave.com/b0lUnxSMZpAL7-HjTKS5T0izWIlL0M5DHgTkwYlrgKk/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJhY2Nlc3Mu/Y29tL2Z1bGwvOTU1/OTIyNi5qcGc',
    ingredients: ['Flattened rice', 'Onion', 'Peanuts', 'Mustard seeds', 'Curry leaves', 'Turmeric', 'Lemon'],
    steps: [
      'Rinse poha and set aside',
      'Temper oil with mustard seeds and curry leaves',
      'Saute onions and peanuts',
      'Add turmeric and soaked poha',
      'Finish with lemon juice'
    ],
    duration: 15,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isVegetarian: true,
  ),
  
  // Desserts
  Meal(
    id: 'm7',
    categories: ['c8'],
    title: 'Gulab Jamun',
    imageUrl: 'https://imgs.search.brave.com/EWpWg1_alevQABYwtL3dYwpaZOrBtsI2olTWo_Ok5x4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdDIu/ZGVwb3NpdHBob3Rv/cy5jb20vNTM1NjY1/Ni84MjA1L2kvNDUw/L2RlcG9zaXRwaG90/b3NfODIwNTU0ODYt/c3RvY2stcGhvdG8t/Z3VsYWItamFtdW4u/anBn',
    ingredients: ['Khoya', 'Paneer', 'Sugar syrup', 'Cardamom', 'Ghee'],
    steps: [
      'Make soft dough with khoya and paneer',
      'Form small balls',
      'Fry till golden brown',
      'Soak in warm sugar syrup',
      'Serve warm or cold'
    ],
    duration: 40,
    complexity: Complexity.challenging,
    affordability: Affordability.affordable,
    isVegetarian: true,
  ),
    // Seafood
  Meal(
    id: 'm8',
    categories: ['c6'],
    title: 'Fish Curry',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkmOKogYC-nhKy3wcnspsgz1feQn3WZ8IZ1g&s',
    ingredients: [
      'Fish',
      'Onion',
      'Tomatoes',
      'Coconut milk',
      'Curry leaves',
      'Mustard seeds',
      'Red chilli powder'
    ],
    steps: [
      'Clean and marinate fish with salt and turmeric',
      'Saute onions and tomatoes',
      'Add spices and coconut milk',
      'Simmer curry for 5 minutes',
      'Add fish and cook until done'
    ],
    duration: 45,
    complexity: Complexity.challenging,
    affordability: Affordability.pricey,
    isVegetarian: false,
  ),

  // Veg Curries
  Meal(
    id: 'm9',
    categories: ['c9'],
    title: 'Aloo Gobi',
    imageUrl:
        'https://www.foodandwine.com/thmb/cMZecoM65AevIDFL4BC9bn0ZNGQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Aloo-Gobi-FT-RECIPE0623-d0555d951f26447cb2f2d99e00ccc660.jpg',
    ingredients: [
      'Potatoes',
      'Cauliflower',
      'Onion',
      'Tomato',
      'Turmeric',
      'Cumin',
      'Coriander'
    ],
    steps: [
      'Heat oil and add cumin',
      'Saute onions and tomatoes',
      'Add spices and mix',
      'Add potatoes and cauliflower',
      'Cook covered till soft'
    ],
    duration: 35,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isVegetarian: true,
  ),

  // Chicken
  Meal(
    id: 'm10',
    categories: ['c10'],
    title: 'Chicken Curry',
    imageUrl:
        'https://www.foodandwine.com/thmb/8YAIANQTZnGpVWj2XgY0dYH1V4I=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/spicy-chicken-curry-FT-RECIPE0321-58f84fdf7b484e7f86894203eb7834e7.jpg',
    ingredients: [
      'Chicken',
      'Onion',
      'Tomato',
      'Ginger garlic paste',
      'Garam masala',
      'Oil',
      'Coriander leaves'
    ],
    steps: [
      'Fry onions till golden',
      'Add ginger garlic paste',
      'Add tomatoes and cook',
      'Add chicken and spices',
      'Add water and simmer till cooked'
    ],
    duration: 50,
    complexity: Complexity.challenging,
    affordability: Affordability.affordable,
    isVegetarian: false,
  ),

  // Mutton
  Meal(
    id: 'm11',
    categories: ['c11'],
    title: 'Mutton Rogan Josh',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8k67yTXY54xJ04HVg70Kkvl5FbzQkLUtIjA&s',
    ingredients: [
      'Mutton',
      'Yogurt',
      'Onion',
      'Garam masala',
      'Kashmiri chilli',
      'Ghee'
    ],
    steps: [
      'Heat ghee and fry onions',
      'Add mutton and sear',
      'Add spices and yogurt',
      'Cook on low flame',
      'Simmer till mutton is tender'
    ],
    duration: 100,
    complexity: Complexity.hard,
    affordability: Affordability.pricey,
    isVegetarian: false,
  ),

  // Snacks
  Meal(
    id: 'm12',
    categories: ['c12'],
    title: 'Samosa',
    imageUrl:
        'https://c.ndtvimg.com/2023-03/0m65kep_samosa_625x300_10_March_23.jpg',
    ingredients: [
      'Flour',
      'Potatoes',
      'Peas',
      'Cumin',
      'Green chilli',
      'Oil',
      'Salt'
    ],
    steps: [
      'Prepare dough with flour and oil',
      'Make spicy potato filling',
      'Fill samosa and seal edges',
      'Deep fry until golden',
      'Serve with chutney'
    ],
    duration: 50,
    complexity: Complexity.challenging,
    affordability: Affordability.affordable,
    isVegetarian: true,
  ),

  // Chatpata
  Meal(
    id: 'm13',
    categories: ['c13', 'c3'],
    title: 'Bhel Puri',
    imageUrl:
        'https://i.ytimg.com/vi/fMJQOsM87fM/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBSLnevjaPor2Fw4-YwrYaPBMpOaw',
    ingredients: [
      'Puffed rice',
      'Sev',
      'Onion',
      'Tomato',
      'Tamarind chutney',
      'Green chutney',
      'Coriander'
    ],
    steps: [
      'Add puffed rice into bowl',
      'Add onion tomato and coriander',
      'Mix chutneys',
      'Add sev on top',
      'Serve immediately'
    ],
    duration: 10,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isVegetarian: true,
  ),

  // Tandoori
  Meal(
    id: 'm14',
    categories: ['c14', 'c10'],
    title: 'Tandoori Chicken',
    imageUrl:
        'https://cti.farziengineer.co/products/Chicken_Whole_in_tandoori_With_Skin-02a48764cccd.jpg?auto=format&sharp=20&ixlib=react-9.3.0',
    ingredients: [
      'Chicken',
      'Yogurt',
      'Tandoori masala',
      'Lemon',
      'Ginger garlic paste',
      'Red chilli powder'
    ],
    steps: [
      'Make marinade with yogurt and spices',
      'Coat chicken and rest 2 hours',
      'Bake/grill in oven or tandoor',
      'Cook till smoky and charred',
      'Serve with onion & mint chutney'
    ],
    duration: 70,
    complexity: Complexity.challenging,
    affordability: Affordability.pricey,
    isVegetarian: false,
  ),

  // More South Indian
  Meal(
    id: 'm15',
    categories: ['c1', 'c7'],
    title: 'Idli Sambar',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJnB2lNVTmdNvzMLHiHkcbvGlrffbOlbnidg&s',
    ingredients: [
      'Idli batter',
      'Toor dal',
      'Tamarind',
      'Sambar masala',
      'Vegetables',
      'Curry leaves'
    ],
    steps: [
      'Steam idlis',
      'Cook dal and vegetables',
      'Add tamarind and masala',
      'Boil sambar',
      'Serve with idli'
    ],
    duration: 35,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isVegetarian: true,
  ),

  // More Dessert
  Meal(
    id: 'm16',
    categories: ['c8'],
    title: 'Kheer',
    imageUrl:
        'https://mypahadidukan.com/cdn/shop/articles/Kesar_Kheer_Recipe_ad0e3b6b-d2aa-45b9-89e0-a7e986ea0bec.jpg?v=1761216555',
    ingredients: [
      'Milk',
      'Rice',
      'Sugar',
      'Cardamom',
      'Dry fruits',
      'Ghee'
    ],
    steps: [
      'Boil milk',
      'Add rice and cook slowly',
      'Add sugar and cardamom',
      'Add dry fruits',
      'Serve chilled or warm'
    ],
    duration: 45,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isVegetarian: true,
  ),

];

