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
];

