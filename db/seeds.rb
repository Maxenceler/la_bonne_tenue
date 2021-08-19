# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
Booking.destroy_all
Item.destroy_all
User.destroy_all

# USER
file_user1 = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQF9spKc0C2oEg/profile-displayphoto-shrink_800_800/0/1540821948198?e=1634774400&v=beta&t=2p_InJFeZlTqpP57DGHOB0AXF1Ewjw52GWOXKArt-rI')
file_user2 = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQFCV7Uj0CNX2Q/profile-displayphoto-shrink_800_800/0/1573075514125?e=1634774400&v=beta&t=iXqeEpOZLLaq9nZuFFgG5i8x9TZbyG3-Q6xjmlfXS4k')
file_user3 = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQGQWK1Pjzjp5A/profile-displayphoto-shrink_800_800/0/1537567131692?e=1634774400&v=beta&t=4irjCuvuTK_D_ob-rsChWYmBGUn4NnrHI0ZcM0iet9c')

user1 = User.create(username: 'mlerouge', email: 'maxencelerouge1@gmail.com', password: 'anniversaire')
user2 = User.create(username: 'vruccio', email: 'violetteruccio@gmail.com', password: 'anniversaire')
user3 = User.create(username: 'edourthe', email: 'estelle.dourthe40@orange.fr', password: 'anniversaire')

user1.photo.attach(io: file_user1, filename: 'C5603AQF9spKc0C2oEg', content_type: 'image/jpg')
user2.photo.attach(io: file_user2, filename: 'C4D03AQFCV7Uj0CNX2Q', content_type: 'image/jpg')
user3.photo.attach(io: file_user3, filename: 'C5603AQGQWK1Pjzjp5A', content_type: 'image/jpg')

# ITEMS

file1 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_fiche/uploads/products/NR105-116bis/NR105-116-1.jpg')
file2 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_fiche/uploads/products/NR105-116bis/NR105-116-2.jpg')
file3 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_fiche/uploads/products/NR105-116bis/NR105-116-3.jpg')
file4 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_fiche/uploads/products/NR105-116bis/NR105-116-4.jpg')

file5 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BC245-956/TCBC21-956-1.jpg')
file6 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BC245-956/TCBC21-956-2.jpg')
file7 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BC245-956/TCBC21-956-3.jpg')
file8 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BC245-956/TCBC21-956-4.jpg')

file9 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/VR232-1403bis/VR232-1403-1.jpg')
file10 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/VR232-1403bis/VR232-1403-2.jpg')
file11 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/VR232-1403bis/VR232-1403-3.jpg')
file12 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/VR232-1403bis/VR232-1403-4.jpg')

file13 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCVR17-129bis/PCVR17-129bis-1.jpg')
file14 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCVR17-129bis/PCVR17-129bis-2.jpg')
file15 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCVR17-129bis/PCVR17-129bis-3.jpg')
file16 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCVR17-129bis/PCVR17-129bis-4.jpg')

file17 = URI.open('https://cdn2.easy-clothes.com/37236-thickbox_default/robe-longue-bali-noire-129.jpg')
file18 = URI.open('https://cdn3.easy-clothes.com/37225-thickbox_default/robe-longue-bali-noire-129.jpg')
file19 = URI.open('https://cdn1.easy-clothes.com/37228-thickbox_default/robe-longue-bali-noire-129.jpg')
file20 = URI.open('https://cdn3.easy-clothes.com/37231-thickbox_default/robe-longue-bali-noire-129.jpg')


item1 = Item.new(title: "robe en dentelle bicolore Sandro", size: "36", item_type: "robe", color: "noir", price: 50, description: "Robe noire et blanche Sandro. Tout en dentelle et empiècement laissant entrevoir la peau en transparence à la carrure, manches courtes, col cravate à nouer ou à laisser lâche. Fermeture par un zip métal doré milieu dos.
Occasions conseillées : Au travail, Cérémonie, Soirée / Fête Couleur : noir, blanc",
brand: "Sandro", occasion: "Travail")
item1.user = user2
item1.save

item2 = Item.create(title: "robe de mariée Mademoiselle R", size: "40", item_type: "robe", color: "blanche", price: 150, description: "Ensemble top blanc avec épaules en dentelle et jupe longue blanche en tulle Mademoiselle R avec crop top, dos nu avec fermeture par boutons et jupe à boutonnière apparente dans le bas du dos et taille marquée
Occasions conseillées : Se marier, Mariage, Cérémonie, Couleur : blanc",
brand: "Mademoiselle R", occasion: "Se marier")
item2.user = user3
item2.save

item3 = Item.create(title: "robe longue satinée",
size: "40", item_type: "robe", color: "verte", price: 70, description: "Robe longue verte satinée ouverture dans le dos ROVANA Maje, manches courtes amples et encolure bateau. Ouverture croisée dans le dos et taille marquée. La jupe possède deux fentes sur les côtés à partir du genou. Fermeture dans le dos à zip invisible
Occasions conseillées : Gala, Mariage, Cérémonie, Bal Couleur : vert",
brand: "Maje", occasion: "Cockail")
item3.user = user1
item3.save

item4 = Item.create(title: "ensemble tailleur imprimé vert Reiko",
size: "38", item_type: "costume", color: "vert", price: 45, description: "Ensemble tailleur imprimé vert : Veste Blair et pantalon Lizzy Reiko
Veste col chemisier et fausse poche passepoilées. Deux boutons à la fin de chaque manche et fermeture sur le devant par un bouton bleu
Pantalon droit imprimé avec deux fausses poches passepoilées à l'arrière et passants à la taille pour y glisser une ceinture. Fermeture sur le devant à zip bleu et crochet argenté
Occasions conseillées : Travail, Mariage, Cérémonie Couleur : vert",
brand: "Reiko", occasion: "Travail")
item4.user = user1
item4.save

item5 = Item.create(title: "Robe longue Bali noire",
size: "38", item_type: "Robe", color: "Noire", price: 30, description: "Bretelles fines, décolleté cache-coeur, élastique en-dessous de la poitrine, effet soie, décolleté dans le dos",
brand: "Stella & Suzie", occasion: "Casual")
item5.user = user2
item5.save

item1.main_photo.attach(io: file1, filename: 'NR105-116-1.jpg', content_type: 'image/jpg')
item1.photos.attach(io: file2, filename: 'NR105-116-2.jpg', content_type: 'image/jpg')
item1.photos.attach(io: file3, filename: 'NR105-116-3.jpg', content_type: 'image/jpg')
item1.photos.attach(io: file4, filename: 'NR105-116-4.jpg', content_type: 'image/jpg')

item2.main_photo.attach(io: file5, filename: 'TCBC21-956-1.jpg', content_type: 'image/jpg')
item2.photos.attach(io: file6, filename: 'TCBC21-956-2.jpg', content_type: 'image/jpg')
item2.photos.attach(io: file7, filename: 'TCBC21-956-3.jpg', content_type: 'image/jpg')
item2.photos.attach(io: file8, filename: 'TCBC21-956-4.jpg', content_type: 'image/jpg')

item3.main_photo.attach(io: file9, filename: 'VR232-1403-1.jpg', content_type: 'image/jpg')
item3.photos.attach(io: file10, filename: 'VR232-1403-2.jpg', content_type: 'image/jpg')
item3.photos.attach(io: file11, filename: 'VR232-1403-3.jpg', content_type: 'image/jpg')
item3.photos.attach(io: file12, filename: 'VR232-1403-4.jpg', content_type: 'image/jpg')

item4.main_photo.attach(io: file13, filename: 'PCVR17-129bis-1.jpg', content_type: 'image/jpg')
item4.photos.attach(io: file14, filename: 'PCVR17-129bis-2.jpg', content_type: 'image/jpg')
item4.photos.attach(io: file15, filename: 'PCVR17-129bis-3.jpg', content_type: 'image/jpg')
item4.photos.attach(io: file16, filename: 'PCVR17-129bis-4.jpg', content_type: 'image/jpg')

item5.main_photo.attach(io: file17, filename: 'robe-longue-bali-noire-129.jpg', content_type: 'image/jpg')
item5.photos.attach(io: file18, filename: 'robe-longue-bali-noire-129.jpg', content_type: 'image/jpg')
item5.photos.attach(io: file19, filename: 'robe-longue-bali-noire-129.jpg', content_type: 'image/jpg')
item5.photos.attach(io: file20, filename: 'robe-longue-bali-noire-129.jpg', content_type: 'image/jpg')
