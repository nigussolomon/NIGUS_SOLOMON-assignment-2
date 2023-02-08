class DataLoader {
  static late List topPicks;
  static late List categories;
  static late List foods;

  static List getPicks() {
    return topPicks = [
      {
        "header": "Muffins",
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKWBHLmyeZIjrRTO6NB-w1IVlbwz16E7xraA&usqp=CAU"
      },
      {
        "header": "Hot Cake",
        "image":
            "https://www.keyingredient.com/media/09/82/b08496cd78ddbd4bdda4f441160ddc6d4b15.jpg/rh/japanese-hot-cake.jpg"
      },
      {
        "header": "Pizza",
        "image":
            "https://static.toiimg.com/thumb/53110049.cms?width=1200&height=900"
      }
    ];
  }

  static List getCategories() {
    return categories = [
      {
        "header": "Bread",
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0pR9lYrLL6foi2hJVTthl0imMjSe06TGHCw&usqp=CAU"
      },
      {
        "header": "Cakes",
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQazwyM6YL2At8LkesN3cHfo_yTZAvhBkNWag&usqp=CAU"
      },
      {
        "header": "Snacks",
        "image":
            "https://www.tasteofhome.com/wp-content/uploads/2019/05/shutterstock_273975992.jpg?fit=700,700"
      },
      {
        "header": "Pizza",
        "image":
            "https://www.simplyrecipes.com/thmb/KRw_r32s4gQeOX-d07NWY1OlOFk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Simply-Recipes-Homemade-Pizza-Dough-Lead-Shot-1c-c2b1885d27d4481c9cfe6f6286a64342.jpg"
      },
      {
        "header": "Sweets",
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbtemmsGoD-X-jj6lvU-RZNYDUMoof_WJkDQ&usqp=CAU"
      },
      {
        "header": "Coffee",
        "image":
            "https://www.fanabc.com/english/wp-content/uploads/2022/08/ethiopia-coffee.jpg"
      }
    ];
  }

  static List getFoods() {
    return foods = [
      {
        "header": "Black Forest",
        "image":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnUDHRtg_GfjnrXHpWpwzFYB-WtKsmLeKcsw&usqp=CAU"
      },
      {
        "header": "Super Meat Pizza",
        "image":
            "https://www.queensleeappetit.com/wp-content/uploads/2019/02/Meat-Lovers-Pizza-7.jpg"
      },
      {
        "header": "Pancakes",
        "image":
            "https://static.onecms.io/wp-content/uploads/sites/43/2022/03/20/20334-Banana-Pancakes-mfs__2x3.jpg"
      },
      {
        "header": "Chocolate",
        "image":
            "https://upload.wikimedia.org/wikipedia/commons/7/70/Chocolate_%28blue_background%29.jpg"
      },
    ];
  }
}
