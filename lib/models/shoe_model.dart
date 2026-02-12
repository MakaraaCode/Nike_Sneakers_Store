class Shoe {
  final String name;
  final double price;
  final String imageurl;
  final String type;
  final String category;

  Shoe({
    required this.name,
    required this.price,
    required this.imageurl,
    required this.type,
    required this.category,
  });
}

List<Shoe> shoes1 = [
  Shoe(
    name: "Air Max 270",
    price: 150,
    imageurl:
        "https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_9ddf04c7-2a9a-4d76-add1-d15af8f0263d,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/awjogtdnqxniqqk0wpgf/AIR+MAX+270.png",
    type: "Men's Shoes",
    category: "Running",
  ),
  Shoe(
    name: "Air Force 1",
    price: 120,
    imageurl:
        "https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_9ddf04c7-2a9a-4d76-add1-d15af8f0263d,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/57558712-5ebe-4abb-9984-879f9e896b4c/W+AIR+FORCE+1+%2707+FLYEASE.png",
    type: "Men'Shoes",
    category: "Lifestyle",
  ),
  Shoe(
    name: "Air Jordan 1",
    price: 170,
    imageurl:
        "https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/4ccedd01-fc0b-4717-86b5-d24259927241/AIR+JORDAN+1+RETRO+LOW+OG+%28GS%29.png",
    type: "Men's Shoes",
    category: "Basketball",
  ),
  Shoe(
    name: "Air Jordan 4 Retro Flight Club",
    price: 220,
    imageurl:
        "https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e7ca4c33-67d7-4dc1-95cc-af8313396199/AIR+JORDAN+4+RETRO+OG+FC.png",
    type: "Men's Shoes",
    category: "Lifestyle",
  ),
];

List<Shoe> menshoes = [
  Shoe(
    name: "Nike Air Max Plus VII",
    price: 190,
    imageurl:
        "https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_9ddf04c7-2a9a-4d76-add1-d15af8f0263d,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/153f5bc5-d217-41ed-a8c6-d028adae6e9c/NIKE+AIR+MAX+PLUS+VII.png",
    type: "Men's Shoes",
    category: "Lifestyle",
  ),
  Shoe(
    name: "Nike Air Force 1 Retro Valentine’s Day",
    price: 125,
    imageurl:
        "https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_9ddf04c7-2a9a-4d76-add1-d15af8f0263d,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/3152be6c-714b-4fab-83b8-ce69127d6e52/AIR+FORCE+1+RETRO.png",
    type: "Men's Shoes",
    category: "Lifestyle",
  ),
  Shoe(
    name: "Nike Structure Plus",
    price: 175,
    imageurl:
        "https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_9ddf04c7-2a9a-4d76-add1-d15af8f0263d,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/115a0fa2-f13e-44cd-af3b-7d35d06c1dea/NIKE+STRUCTURE+PLUS.png",
    type: "Men's Shoes",
    category: "Running",
  ),
  Shoe(
    name: "LeBron XXIII Out For Redemption",
    price: 210,
    imageurl:
        "https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_9ddf04c7-2a9a-4d76-add1-d15af8f0263d,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7319a59a-15ab-4702-941d-4d7fc6b88c96/LEBRON+XXIII.png",
    type: "Men's Shoes",
    category: "Baseketball",
  ),
  Shoe(
    name: "Nike Air Force 1 '07 LV8",
    price: 125,
    imageurl:
        "https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_9ddf04c7-2a9a-4d76-add1-d15af8f0263d,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e481132f-6700-42b6-b58c-85f386a6b665/AIR+FORCE+1+%2707+LV8.png",
    type: "Men's Shoes",
    category: "Lifestyle",
  ),
];

List<Shoe> womenshoes = [
  Shoe(
    name: "Jordan Flight Court SE",
    price: 115,
    imageurl:
        "https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/5a8b2e5f-55ae-4130-82d1-1a983b782593/WMNS+JORDAN+FLIGHT+COURT+SE.png",
    type: "Women's Shoes",
    category: "Lifestyle",
  ),
  Shoe(
    name: "Nike Air Max Moto 2K",
    price: 135,
    imageurl:
        "https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_9ddf04c7-2a9a-4d76-add1-d15af8f0263d,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0cbdc50b-be98-47e5-b3ce-55ecae4e979d/W+NIKE+AIR+MAX+MOTO+2K.png",
    type: "Women's Shoes",
    category: "Lifestyle",
  ),
  Shoe(
    name: "Nike Astrograbber Textile",
    price: 115,
    imageurl:
        "https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_9ddf04c7-2a9a-4d76-add1-d15af8f0263d,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d9acafd4-0157-42bd-9aaa-7e62ba18e000/W+NIKE+ASTROGRABBER+TXT.png",
    type: "Women's Shoes",
    category: "Lifestyle",
  ),
  Shoe(
    name: "Nike Vomero 18",
    price: 155,
    imageurl:
        "https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_9ddf04c7-2a9a-4d76-add1-d15af8f0263d,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7daae4c5-76c3-4126-a137-dd3165380a11/W+NIKE+VOMERO+18.png",
    type: "Women's Shoes",
    category: "Running",
  ),
  Shoe(
    name: "Nike Air Force 1 '07 Valentine's Day",
    price: 115,
    imageurl:
        "https://static.nike.com/a/images/t_web_pdp_535_v2/f_auto,u_9ddf04c7-2a9a-4d76-add1-d15af8f0263d,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/795f64d1-7e24-4957-926b-a4837766dc6b/W+AIR+FORCE+1+%2707.png",
    type: "Women's Shoes",
    category: "Lifestyle",
  ),
];
