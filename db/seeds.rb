# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Section.create([{name:"Breakfast"}, {name: "Lunch"}, {name: "Dinner"}, {name: "Drinks"}])
sections = Section.all()
sections.each do |section|
  case section.name
  when "Breakfast"
    @section_breakfast = section
  when "Lunch"
    @section_lunch = section
  when "Dinner"
    @section_dinner = section
  when "Drinks"
    @section_drinks= section
  end
end
Item.create(
  [
    {name: "Banh Canh",price: 20000,description: "Thick noodle",section_id: @section_breakfast.id,image_url: "https://upload.wikimedia.org/wikipedia/commons/c/c4/Banh-Canh-Noodle-Soup.jpg"},
    {name: "Banh hoi",price: 20000,description: "Extremely thin noodles that are woven into intricate bundles and often topped with chopped scallions (spring onions) and a complementary meat dish",section_id: @section_breakfast.id,image_url: "https://upload.wikimedia.org/wikipedia/commons/0/08/Banh_hoi.jpg"},
    {name: "Pho",price: 25000,description: "Rice noodles",section_id: @section_breakfast.id,image_url: "http://sirabee.com/wp/wp-content/uploads/2016/02/sirabee0219pho5.jpg"},
    {name: "Banh tam ca ri",price: 30000,description: "Thick noodle",section_id: @section_breakfast.id,image_url: "https://upload.wikimedia.org/wikipedia/commons/7/7c/B%C3%A1nh_t%E1%BA%B1m_c%C3%A0_ri.jpg"},
    {name: "Bun bo Hue",price: 20000,description: "Hue style (hot and spicy) beef rice vermicelli soup with lemongrass and pork",section_id: @section_breakfast.id,image_url: "https://upload.wikimedia.org/wikipedia/commons/3/3c/Bunbo.jpg"},
    {name: "Bun cha",price: 20000,description: "Vermicelli noodles with grilled pork meatballs served over salad, herbs, bean sprouts, and sliced cucumbers",section_id: @section_breakfast.id,image_url: "https://upload.wikimedia.org/wikipedia/commons/6/6a/B%C3%BAn_ch%E1%BA%A3_H%C3%A0ng_M%C3%A0nh.jpg"},

    {name: "Banh xeo",price: 40000,description: "Coconut milk-flavored crepes",section_id: @section_lunch.id,image_url: "https://upload.wikimedia.org/wikipedia/commons/e/e5/B%C3%A1nh_x%C3%A8o_1.jpg"},
    {name: "Com tam",price: 40000,description: "Warm broken rice often served with a slab of grilled pork chop marinated in sugar and fish sauce (sườn), a slice of steamed pork loaf topped with egg yolks (chả trứng hấp), and a mixture of pork skin and thinly shredded pork",section_id: @section_lunch.id,image_url: "https://upload.wikimedia.org/wikipedia/commons/7/7c/B%C3%A1nh_t%E1%BA%B1m_c%C3%A0_ri.jpg"},
    {name: "Grilled Chicken",price: 70000,description: "Grilled Chicken Recipe",section_id: @section_lunch.id,image_url: "http://toinayangi.vn/wp-content/uploads/2014/11/cach-uop-ga-nuong-muoi-ot-1.jpg"},
    {name: "Cao lau	",price: 50000,description: "Originated from Quang Nam Province in central Vietnam, mì quảng is adamant about maintaining a variety of colors and textures, featuring a pork and shrimp-based broth, the chewy yellow of the thick turmeric noodles, the bright green ribbons of lettuce, the soft earthy pork, the tenderness of the shrimp, the pleasant crunch of crushed peanut between your teeth, and the snap of the sesame-freckled rice crackers.",section_id: @section_lunch.id,image_url: "https://upload.wikimedia.org/wikipedia/commons/c/c5/Cao_l%E1%BA%A7u.jpg"},
    {name: "Cha gio",price: 30000,description: "Fried pork spring rolls",section_id: @section_lunch.id,image_url: "https://upload.wikimedia.org/wikipedia/commons/6/66/Cha_Gio.jpg"},

    {name: "Vit quay",price: 60000,description: "Grilled Duck",section_id: @section_dinner.id,image_url: "http://125.235.37.56/media01/53c6237ac5336/2014/11/11/66815af6-61d7-4012-9b9f-93fe3598505b.jpg"},
    {name: "Khau Nhuc Bac Kan",price: 50000,description: "Pork and Tomato",section_id: @section_dinner.id,image_url: "http://125.235.37.56/media01/53c6237ac5336/2014/11/11/52b775bd-1bdc-4289-89d0-5779807d957a.jpg"},
    {name: "Pa pinh top Son La",price: 60000,description: "Fish of Thai region, Son La",section_id: @section_dinner.id,image_url: "http://toinayangi.vn/wp-content/uploads/2014/11/cach-uop-ga-nuong-muoi-ot-1.jpg"},
    {name: "Thit chua Phu Tho",price: 40000,description: "Thit chua an cung la oi, sung, dinh lang, ... cuon vao roi cham tuong ot cay cay, tha vao mieng nhai cham rai.",section_id: @section_dinner.id,image_url: "http://125.235.37.56/media01/53c6237ac5336/2014/11/11/1fabf201-f262-4ca2-8b55-c819224a6fd6.jpg"},
    {name: "Lau la rung Gia Lai",price: 60000,description: "Lau la rung chinh la kinh nghiem tu ngan doi cua dong bao dan toc ban dia duoc duc ket. Moi loai la deu chua dung chat dinh duong dac biet, co tac dung tot voi suc khoe.",section_id: @section_dinner.id,image_url: "http://125.235.37.56/media01/53c6237ac5336/2014/11/11/de6259cd-180e-4883-86f8-a2eadbbf1ce2.jpg"},

    {name: "Tra sua",price: 40000,description: "Tea milk",section_id: @section_drinks.id,image_url: "http://data.asiabooking.com.vn/nhung-do-uong-dac-trung-cua-cua-chau-a-o-viet-nam-21098.jpg"},
    {name: "Coffee",price: 35000,description: "Fresh coffee",section_id: @section_drinks.id,image_url: "https://cdn2.vox-cdn.com/uploads/chorus_image/image/48851021/shutterstock_249549703.0.0.jpg"},
    {name: "Yogurt",price: 40000,description: "Yogurt",section_id: @section_drinks.id,image_url: "http://blogs-images.forbes.com/alicegwalton/files/2014/07/670px-dessert_-_yogurt_e_lamponi.jpg"},
    {name: "Soda",price: 30000,description: "Soda",section_id: @section_drinks.id,image_url: "http://www.themeaningofpie.com/wp-content/uploads/2012/08/Ginger-Lime-Soda-Lead.jpg"},
    {name: "Smoothies",price: 40000,description: "Smoothies",section_id: @section_drinks.id,image_url: "http://www.afrobella.com/wp-content/uploads/2012/11/shutterstock_1111264731.jpg"},
  ]
  )
