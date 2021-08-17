# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
Item.destroy_all
User.destroy_all

# USER
file_user1 = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQF9spKc0C2oEg/profile-displayphoto-shrink_800_800/0/1540821948198?e=1634774400&v=beta&t=2p_InJFeZlTqpP57DGHOB0AXF1Ewjw52GWOXKArt-rI')
file_user_2 = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQFCV7Uj0CNX2Q/profile-displayphoto-shrink_800_800/0/1573075514125?e=1634774400&v=beta&t=iXqeEpOZLLaq9nZuFFgG5i8x9TZbyG3-Q6xjmlfXS4k')
file_user_3 = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQGQWK1Pjzjp5A/profile-displayphoto-shrink_800_800/0/1537567131692?e=1634774400&v=beta&t=4irjCuvuTK_D_ob-rsChWYmBGUn4NnrHI0ZcM0iet9c')

user_1 = User.create(username: 'mlerouge', email: 'maxencelerouge1@gmail.com', password: 'anniversaire')
user_2 = User.create(username: 'vruccio', email: 'violetteruccio@gmail.com', password: 'anniversaire')
user_3 = User.create(username: 'edourthe', email: 'estelle.dourthe40@orange.fr', password: 'anniversaire')

user_1.photo.attach(io: file_user1, filename: 'C5603AQF9spKc0C2oEg', content_type: 'image/jpg')
user_2.photo.attach(io: file_user_2, filename: 'C4D03AQFCV7Uj0CNX2Q', content_type: 'image/jpg')
user_3.photo.attach(io: file_user_3, filename: 'C5603AQGQWK1Pjzjp5A', content_type: 'image/jpg')

# ITEMS

file_1 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_fiche/uploads/products/NR105-116bis/NR105-116-1.jpg')
file_2 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_fiche/uploads/products/NR105-116bis/NR105-116-2.jpg')
file_3 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_fiche/uploads/products/NR105-116bis/NR105-116-3.jpg')
file_4 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_fiche/uploads/products/NR105-116bis/NR105-116-4.jpg')

file_5 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BC245-956/TCBC21-956-1.jpg')
file_6 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BC245-956/TCBC21-956-2.jpg')
file_7 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BC245-956/TCBC21-956-3.jpg')
file_8 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BC245-956/TCBC21-956-4.jpg')

file_9 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/VR232-1403bis/VR232-1403-1.jpg')
file_10 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/VR232-1403bis/VR232-1403-2.jpg')
file_11 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/VR232-1403bis/VR232-1403-3.jpg')
file_12 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/VR232-1403bis/VR232-1403-4.jpg')

file_13 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCVR17-129bis/PCVR17-129bis-1.jpg')
file_14 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCVR17-129bis/PCVR17-129bis-2.jpg')
file_15 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCVR17-129bis/PCVR17-129bis-3.jpg')
file_16 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCVR17-129bis/PCVR17-129bis-4.jpg')

item1 = Item.new(title: "robe en dentelle bicolore Sandro", size: "36", item_type: "robe", color: "noir", price: 50, description: "Robe noire et blanche Sandro. Tout en dentelle et empiècement laissant entrevoir la peau en transparence à la carrure, manches courtes, col cravate à nouer ou à laisser lâche. Fermeture par un zip métal doré milieu dos.
Occasions conseillées : Au travail, Cérémonie, Soirée / Fête Couleur : noir, blanc",
brand: "Sandro", occasion: "Travail")
item1.user = user1
item1.save

item_2 = Item.create(title: "robe de mariée Mademoiselle R", size: "40", item_type: "robe", color: "blanche", price: 150, description: "Ensemble top blanc avec épaules en dentelle et jupe longue blanche en tulle Mademoiselle R avec crop top, dos nu avec fermeture par boutons et jupe à boutonnière apparente dans le bas du dos et taille marquée
Occasions conseillées : Se marier, Mariage, Cérémonie, Couleur : blanc",
brand: "Mademoiselle R", occasion: "Se marier")
item_3 = Item.create(title: "robe longue satinée",
size: "40", item_type: "robe", color: "verte", price: 70, description: "Robe longue verte satinée ouverture dans le dos ROVANA Maje, manches courtes amples et encolure bateau. Ouverture croisée dans le dos et taille marquée. La jupe possède deux fentes sur les côtés à partir du genou. Fermeture dans le dos à zip invisible
Occasions conseillées : Gala, Mariage, Cérémonie, Bal Couleur : vert",
brand: "Maje", occasion: "Cockail")
item_4 = Item.create(title: "ensemble tailleur imprimé vert Reiko",
size: "38", item_type: "costume", color: "vert", price: 45, description: "Ensemble tailleur imprimé vert : Veste Blair et pantalon Lizzy Reiko
Veste col chemisier et fausse poche passepoilées. Deux boutons à la fin de chaque manche et fermeture sur le devant par un bouton bleu
Pantalon droit imprimé avec deux fausses poches passepoilées à l'arrière et passants à la taille pour y glisser une ceinture. Fermeture sur le devant à zip bleu et crochet argenté
Occasions conseillées : Travail, Mariage, Cérémonie Couleur : vert",
brand: "Reiko", occasion: "Travail")

item_1.photos.attach(io: file_1, filename: 'NR105-116-1.jpg', content_type: 'image/jpg')
item_1.photos.attach(io: file_2, filename: 'NR105-116-2.jpg', content_type: 'image/jpg')
item_1.photos.attach(io: file_3, filename: 'NR105-116-3.jpg', content_type: 'image/jpg')
item_1.photos.attach(io: file_4, filename: 'NR105-116-4.jpg', content_type: 'image/jpg')

item_2.photos.attach(io: file_5, filename: 'TCBC21-956-1.jpg', content_type: 'image/jpg')
item_2.photos.attach(io: file_6, filename: 'TCBC21-956-2.jpg', content_type: 'image/jpg')
item_2.photos.attach(io: file_7, filename: 'TCBC21-956-3.jpg', content_type: 'image/jpg')
item_2.photos.attach(io: file_8, filename: 'TCBC21-956-4.jpg', content_type: 'image/jpg')

item_3.photos.attach(io: file_9, filename: 'VR232-1403-1.jpg', content_type: 'image/jpg')
item_3.photos.attach(io: file_10, filename: 'VR232-1403-2.jpg', content_type: 'image/jpg')
item_3.photos.attach(io: file_11, filename: 'VR232-1403-3.jpg', content_type: 'image/jpg')
item_3.photos.attach(io: file_12, filename: 'VR232-1403-4.jpg', content_type: 'image/jpg')

item_4.photos.attach(io: file_13, filename: 'PCVR17-129bis-1.jpg', content_type: 'image/jpg')
item_4.photos.attach(io: file_14, filename: 'PCVR17-129bis-2.jpg', content_type: 'image/jpg')
item_4.photos.attach(io: file_15, filename: 'PCVR17-129bis-3.jpg', content_type: 'image/jpg')
item_4.photos.attach(io: file_16, filename: 'PCVR17-129bis-4.jpg', content_type: 'image/jpg')
