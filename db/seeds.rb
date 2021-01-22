# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Property.destroy_all
ProductProperty.destroy_all

product1 = Product.create(name: "Disinfectant Spray", upc: '1234567890', available_on: '11/09/2021')
product2 = Product.create(name: "Ultra Soft Tissue", upc: '1234567891', available_on: '02/19/2021')
product3 = Product.create(name: "Hand Sanitizer", upc: '1234567892', available_on: '11/02/2021')
product4 = Product.create(name: "CoronaBuster5000", upc: '1234567893', available_on: '11/06/2021')

property1 = Property.create(name: 'brand')
property2 = Property.create(name: 'type')
property3 = Property.create(name: 'description')

pp1 = ProductProperty.create(property_id: property1.id, value: 'Lysol', product_id: product1.id)
pp2 = ProductProperty.create(property_id: property1.id, value: 'Charmin', product_id: product2.id)
pp3 = ProductProperty.create(property_id: property1.id, value: 'Purel', product_id: product3.id)
pp4 = ProductProperty.create(property_id: property1.id, value: 'By His Stripes', product_id: product4.id)
pp5 = ProductProperty.create(property_id: property2.id, value: 'Sola Fide', product_id: product4.id)
pp6 = ProductProperty.create(property_id: property2.id, value: 'Gel', product_id: product3.id)
pp7 = ProductProperty.create(property_id: property3.id, value: 'Kills 99.9 percent of germs ', product_id: product1.id)
pp8 = ProductProperty.create(property_id: property3.id, value: 'Best TP on this side of the Mississippi', product_id: product2.id)
pp9 = ProductProperty.create(property_id: property3.id, value: 'Kills the sin, heals within ', product_id: product4.id)
