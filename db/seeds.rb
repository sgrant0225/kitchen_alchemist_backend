# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

avocado = Item.create(name: 'Avocado', benefits: 'Avocados are a great source of biotin, which is part of the B complex vitamins. Biotin is known to help prevent dry skin when applied topically. It can also help prevent brittle hair and nails.')
olive_oil = Item.create(name: 'Olive Oil', benefits: 'Naturally, olive oil is packed with anti-aging antioxidants and hydrating squalene, making it superb for hair, skin, and nails.')
honey = Item.create(name: 'Honey', benefits: 'Honey is rich in vitamins, minerals, antioxidants, probiotics, amino acids, and enzymes that protect, soften, and nourish skin and hair. Honey also has natural antiseptic, antibacterial, and anti-inflammatory properties to help cleanse and sooth skin, hair, and scalp.' )



Use.create(
    [{
        title: 'Preshampoo Hair Treatment', 
        ingredients: 'Olive Oil', 
        recipe: 'First, warm the olive oil in the microwave or in hot water. Then apply it generously to the ends of hair and scalp. Leave it in for up to 10 to 20 minutes, and then shampoo it out.', 
        item_id: olive_oil.id
    },
    {
        title: 'Avocado Mask', 
        ingredients: '1 ripe avocado, 1/3 cup plain yogurt, 2 teaspoons honey, 1 tablespoon lemon juice, optional: 2 tbsp rolled oats', 
        recipe: 'Add all ingredients to a blender, and blend until smooth. Wash face with a cleanser, dry and then apply mask liberally to face and neck. Let sit on face for 20 minutes. Wash mask off face and follow-up with your typical skincare routine.', 
        item_id: avocado.id
    },
    {
        title: 'Hydrating Hair Mask',
        ingredients: '1/2 cup raw honey and 1/4 cup olive oil',
        recipe: 'In a small bowl, mix together the honey and olive oil. Heat in the microwave for a few seconds. You want the mixture to be warm, NOT HOT. Apply to dry hair from scalp to ends and leave on for 10-20 minutes. Rinse well and shampoo to remove remaining mask.',
        item_id: honey.id
    }]
) 