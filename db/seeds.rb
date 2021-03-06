# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"



rabbit = "
    / _ \\
   | / \\ |
   ||   || _______
   ||   || |\\     \\
   ||   || ||\\     \\
   ||   || || \\    |
   ||   || ||  \\__/
   ||   || ||   ||
    \\\\_/ \\_/ \\_//
   /   _     _   \\
  /               \\
  |    O     O    |
  |   \\  ___  /   |
 /     \\ \\_/ /     \\
/  -----  |  --\\    \\
|     \\__/|\\__/ \\   |
\\       |_|_|       /
 \\_____       _____/
       \\     /
       |     |"



 rabbit2 =     "
    / _ \\   / _ \\
   | / \\ | | / \\ |
   ||   || ||   ||
   ||   || ||   ||
   ||   || ||   ||
   ||   || ||   ||
   ||   || ||   ||
   ||   || ||   ||
    \\\\_/ \\_/ \\_//
   /   _     _   \\
  /               \\
  |    O     O    |
  |   \\  ___  /   |
 /     \\ \\_/ /     \\
/  -----  |  --\\    \\
|     \\__/|\\__/ \\   |
\\       |_|_|       /
 \\_____       _____/
       \\     /
       |     |"


puts `clear`


puts rabbit



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
puts `clear`
puts rabbit2

file1 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_fiche/uploads/products/NR105-116bis/NR105-116-1.jpg')
file2 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_fiche/uploads/products/NR105-116bis/NR105-116-2.jpg')
file3 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_fiche/uploads/products/NR105-116bis/NR105-116-3.jpg')
file4 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_fiche/uploads/products/NR105-116bis/NR105-116-4.jpg')
puts `clear`
puts rabbit

file5 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BC245-956/TCBC21-956-1.jpg')
file6 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BC245-956/TCBC21-956-2.jpg')
file7 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BC245-956/TCBC21-956-3.jpg')
file8 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BC245-956/TCBC21-956-4.jpg')
puts `clear`
puts rabbit2

file9 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/VR232-1403bis/VR232-1403-1.jpg')
file10 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/VR232-1403bis/VR232-1403-2.jpg')
file11 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/VR232-1403bis/VR232-1403-3.jpg')
file12 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/VR232-1403bis/VR232-1403-4.jpg')
puts `clear`
puts rabbit

file13 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCVR17-129bis/PCVR17-129bis-1.jpg')
file14 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCVR17-129bis/PCVR17-129bis-2.jpg')
file15 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCVR17-129bis/PCVR17-129bis-3.jpg')
file16 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCVR17-129bis/PCVR17-129bis-4.jpg')
puts `clear`
puts rabbit2

file17 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BC302-ML/tina-blanche_1.jpg')
file18 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BC302-ML/tina-blanche_2.jpg?=2008202112')
file19 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BC302-ML/madeleine-vintage_3.jpg?=2008202112')
file20 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BC302-ML/madeleine-vintage_4.jpg?=2008202112')
puts `clear`
puts rabbit

file21 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_basket3/uploads/thumb/font_product_basket3/uploads/products/ACCS49-823/ACCS49-823-1.jpg')
file22 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_basket3/uploads/thumb/font_product_basket3/uploads/products/ACCS49-823/ACCS49-823-2.jpg')
file23 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_basket3/uploads/thumb/font_product_basket3/uploads/products/ACCS49-823/ACCS49-823-3.jpg')
file24 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_basket3/uploads/thumb/font_product_basket3/uploads/products/ACCS49-823/ACCS49-823-4.jpg')

file25 = URI.open('https://www.lescachotieres.com/uploads/products/ACCC24-1354/ACCC24-1354-1.jpg')
file26 = URI.open('https://www.lescachotieres.com/uploads/products/ACCC24-1354/ACCC24-1354-1.jpg')
file27 = URI.open('https://www.lescachotieres.com/uploads/products/ACCC24-1354/ACCC24-1354-1.jpg')
file28 = URI.open('https://www.lescachotieres.com/uploads/products/ACCC24-1354/ACCC24-1354-1.jpg')

file29 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_basket3/uploads/products/ACCC14-603/ACCC14-603-1.jpg')
file30 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_basket3/uploads/products/ACCC14-603/ACCC14-603-2.jpg')
file31 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_basket3/uploads/products/ACCC14-603/ACCC14-603-3.jpg')
file32 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_basket3/uploads/products/ACCC14-603/ACCC14-603-3.jpg')

file33 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/VMBC14-1289bis/VMBC14-1289-1.jpg')
file34 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/VMBC14-1289bis/VMBC14-1289-2.jpg')
file35 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/VMBC14-1289bis/VMBC14-1289-3.jpg')
file36 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/VMBC14-1289bis/VMBC14-1289-4.jpg')

file37 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/VMBE2-37-bis/VMBE2-37-1.jpg')
file38 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/VMBE2-37-bis/VMBE2-37-2.jpg')
file39 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/VMBE2-37-bis/VMBE2-37-3.jpg')
file40 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/VMBE2-37-bis/VMBE2-37-4.jpg')

file41 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/VMBG16-79bis/VMBG16-79-01.jpg')
file42 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/VMBG16-79bis/VMBG16-79-02.jpg?=2008202112')
file43 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/VMBG16-79bis/VMBG16-79-03.jpg?=2008202112')
file44 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/VMBG16-79bis/VMBG16-79-4.jpg?=2008202112')

file46 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/JRS24-ML/2.jpg?=2008202113')
file47 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/JRS24-ML/jupe-camile-zoom.jpg?=2008202113')

file48 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/JBG5-ML/camilla-champagne_4.jpg')
file49 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/JBG5-ML/camilla-champagne_2.jpg?=2008202113')
file50 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/JBG5-ML/camilla-champagne_3.jpg?=2008202113')
file51 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/JBG5-ML/champagne-zoom.jpg?=2008202113')

file52 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/JBE26-ML/top-et-jupe-1.jpg')
file53 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/JBE26-ML/top-et-jupe-bleu-2.jpg?=2008202113')
file54 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/JBE26-ML/jupebleu.jpg?=2008202113')
file55 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/JBE26-ML/4.jpg?=2008202113')

file56 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/TCBE30-ML/TCBE30-ML-1.jpg')
file57 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BE672-ML/camille-bleu-argent-noir_2.jpg?=2008202113')
file58 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BE672-ML/camille-bleu-argent-noir_3.jpg?=2008202113')
file59 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BE672-ML/camille-bleu-argent-noir_4.jpg?=2008202113')

file60 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/TCBC34-ML/TCBC34-ML-1.jpg')
file61 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BG145-ML/camilla-champagne_2.jpg?=2008202113')
file62 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BG145-ML/camilla-champagne_3.jpg?=2008202113')
file63 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/products/BG145-ML/camilla-champagne_4.jpg?=2008202113')

file64 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCRS10-129bis/PCRS10-129bis-1.jpg')
file65 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCRS10-129bis/PCRS10-129bis-2.jpg?=2008202113')
file66 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCRS10-129bis/PCRS10-129bis-3.jpg?=2008202113')
file67 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCRS10-129bis/PCRS10-129bis-4.jpg?=2008202113')

file68 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCRS11-37bis/PCRS11-37-1.jpg')
file69 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCRS11-37bis/PCRS11-37-2.jpg?=2008202113')
file70 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCRS11-37bis/PCRS11-37-3.jpg?=2008202113')
file71 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCRS11-37bis/PCRS11-37-4.jpg?=2008202113')

file72 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCNR58-37-B/PCNR58-37-B-1.jpg')
file73 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCNR58-37-B/PCNR58-37-B-2.jpg?=2008202113')
file74 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCNR58-37-B/PCNR58-37-B-3.jpg?=2008202113')
file75 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/PCNR58-37-B/PCNR58-37-B-4.jpg?=2008202113')

file76 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/ACCC16-597bis/ACCC16-597-1.jpg')
file77 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/ACCC16-597bis/ACCC16-597-2.jpg?=2008202113')
file78 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/ACCC16-597bis/ACCC16-597-3.jpg?=2008202113')
file79 = URI.open('https://www.lescachotieres.com/uploads/thumb/font_product_fiche/uploads/thumb/font_product_basket3/uploads/products/ACCC16-597bis/ACCC16-597-4.jpg?=2008202113')


item1 = Item.new(title: "Robe en dentelle bicolore", size: "36", item_type: "robe", color: "noir", price: 50, description: "Tout en dentelle et empi??cement laissant entrevoir la peau en transparence ?? la carrure, manches courtes, col cravate ?? nouer ou ?? laisser l??che. Fermeture par un zip m??tal dor?? milieu dos.",
brand: "Sandro", occasion: "Travail")
item1.user = user2
item1.save

puts `clear`
puts rabbit2


item2 = Item.create(title: "Robe de mari??e", size: "40", item_type: "robe", color: "blanche", price: 150, description: "Ensemble top blanc avec ??paules en dentelle et jupe longue blanche en tulle Mademoiselle R avec crop top, dos nu avec fermeture par boutons et jupe ?? boutonni??re apparente dans le bas du dos et taille marqu??e",
brand: "Mademoiselle R", occasion: "Grand ??v??nement")
item2.user = user3
item2.save


puts `clear`
puts rabbit

item3 = Item.create(title: "Robe longue satin??e", size: "40", item_type: "robe", color: "Verte", price: 70, description: "Manches courtes amples et encolure bateau. Ouverture crois??e dans le dos et taille marqu??e. La jupe poss??de deux fentes sur les c??t??s ?? partir du genou. Fermeture dans le dos ?? zip invisible",
brand: "Maje", occasion: "Soir??e")
item3.user = user1
item3.save


puts `clear`
puts rabbit2

item4 = Item.create(title: "Pantalon imprim?? vert", size: "38", item_type: "pj", color: "vert", price: 45, description: "Pantalon droit imprim?? avec deux fausses poches passepoil??es ?? l'arri??re et passants ?? la taille pour y glisser une ceinture. Fermeture sur le devant ?? zip bleu et crochet argent??",
brand: "Reiko", occasion: "Casual")
item4.user = user2
item4.save

puts `clear`
puts rabbit

item5 = Item.create(title: "Robe en dentelle", size: "38", item_type: "robe", color: "Blanc", price: 55, description: "ENSEMBLE HAUT DENTELLE BLANCHE MADELEINE ET JUPE MIDI BLANC", brand: "MAISON LEMOINE", occasion: "Casual")
item5.user = user1
item5.save

item6 = Item.create(title: "Pochette noire", size: "34", item_type: "sa", color: "Noire", price: 35, description: "Une anse amovible sur le c??t?? et une grande pochette plate int??rieure. fermeture par un zip dor??", brand: "Yves St Laurent", occasion: "Grand ??v??nement")
item6.user = user2
item6.save

item7 = Item.create(title: "Peigne avec p??tales roses", size: "Unique", item_type: "sa", color: "Rose", price: 20, description: "Armature dor??e et p??tales roses p??les l??g??res", brand: "Maison Guillemette", occasion: "Grand ??v??nement")
item7.user = user2
item7.save

item8 = Item.create(title: "Chapeau en paille", size: "34", item_type: "sa", color: "Beige", price: 50, description: "Un serre-t??te permet de tenir le chapeau sur la t??te et 4 oiseaux sont brod??s sur le bord en paille", brand: "Maison Guillemette", occasion: "Grand ??v??nement")
item8.user = user3
item8.save

item9 = Item.create(title: "Manteau blanc", size: "38", item_type: "mv", color: "Blanc", price: 75, description: "Manteau blanc en fausse fourrure manches longues et longueur midi. Coupe oversize se ferment par un bouton blanc invisible", brand: "Hugo Boss", occasion: "Casual")
item9.user = user2
item9.save

item10 = Item.create(title: "Veste en Tweed", size: "36", item_type: "mv", color: "Bleu", price: 35, description: "Manches longues et encolure ronde de forme tailleur, bords frang??s, petits ??cussons sur le devant de la veste.", brand: "Sandro", occasion: "Casual")
item10.user = user1
item10.save

item11 = Item.create(title: "VESTE BEIGE ?? JEU DE SEQUINS", size: "34", item_type: "mv", color: "Beige", price: 40, description: "La veste se ferme au moyen d'un crochet proche de l'encolure. La veste est couverte de sequins r??versibles donnant un effet de lumi??re", brand: "S??RIE BY SUNCOO", occasion: "Casual")
item11.user = user2
item11.save

item12 = Item.create(title: "JUPE MIDI PLISS??E FLUIDE ROSE POUDR??", size: "42", item_type: "js", color: "Rose", price: 45, description: "Ceinture marqu??e, poches et ourlet bourdon.", brand: "MAISON LEMOINE", occasion: "Soir??e")
item12.user = user3
item12.save

item13 = Item.create(title: "JUPE MIDI PLISS??E FLUIDE CHAMPAGNE", size: "34", item_type: "js", color: "Champagne", price: 45, description: "Ceinture marqu??e, poches et ourlet bourdon.", brand: "MAISON LEMOINE", occasion: "Soir??e")
item13.user = user1
item13.save

item14 = Item.create(title: "JUPE MIDI PLISS??E FLUIDE BLEU ARGENT", size: "42", item_type: "js", color: "BLEU ARGENT", price: 45, description: "Ceinture marqu??e, poches et ourlet bourdon.", brand: "MAISON LEMOINE", occasion: "Soir??e")
item14.user = user2
item14.save

item15 = Item.create(title: "BLOUSE FLUIDE BLEU", size: "42", item_type: "tb", color: "BLEU", price: 55, description: "Manches longues et bouffantes fronc??es en haut de manche. Poignets bouffants ferm??s par un bouton argent??.", brand: "MAISON LEMOINE", occasion: "Soir??e")
item15.user = user3
item15.save

item16 = Item.create(title: "BLOUSE FLUIDE EN SOIE BLANCHE", size: "36", item_type: "tb", color: "BLANC", price: 55, description: "Manches longues et bouffantes fronc??es en haut de manche. Poignets bouffants ferm??s par un bouton argent??.", brand: "MAISON LEMOINE", occasion: "Soir??e")
item16.user = user1
item16.save

item17 = Item.create(title: "PANTALON IMPRIM?? FLEURI", size: "36", item_type: "pj", color: "ROSE", price: 45, description: "Pantalon droit imprim?? fleuri pivoine avec une fausse poche passepoil??e ?? l'arri??re et deux poches ?? l'avant. Passant ?? la taille pour glisser une ceinture et fermeture sur le devant ?? zip dor?? et crochets dor??s.", brand: "S??zane", occasion: "Casual")
item17.user = user2
item17.save

item18 = Item.create(title: "PANTALON NUDE", size: "34", item_type: "pj", color: "BEIGE", price: 50, description: "Deux poches passepoils aux hanches. Fermeture sur le c??t?? ?? zip invisible", brand: "S??zane", occasion: "Soir??e")
item18.user = user3
item18.save

item19 = Item.create(title: "PANTALON NOIRE", size: "40", item_type: "pj", color: "Noir", price: 50, description: "pantalon ?? porter soit ample ou moulant selon les morphologies. Fermeture par un zip invisible milieu dos.", brand: "Sandro", occasion: "Casual")
item19.user = user2
item19.save

item20 = Item.create(title: "COURONNE DE FLEURS ROSES ET BLANCHES", size: "38", item_type: "sa", color: "Rose et blanc", price: 35, description: "La couronne s'attache gr??ce ?? deux rubans en satin", brand: "S??zane", occasion: "Casual")
item20.user = user3
item20.save

puts `clear`
puts rabbit2

item1.main_photo.attach(io: file1, filename: 'NR105-116-1.jpg', content_type: 'image/jpg')
item1.photos.attach(io: file2, filename: 'NR105-116-2.jpg', content_type: 'image/jpg')
item1.photos.attach(io: file3, filename: 'NR105-116-3.jpg', content_type: 'image/jpg')
item1.photos.attach(io: file4, filename: 'NR105-116-4.jpg', content_type: 'image/jpg')

puts `clear`
puts rabbit

item2.main_photo.attach(io: file5, filename: 'TCBC21-956-1.jpg', content_type: 'image/jpg')
item2.photos.attach(io: file6, filename: 'TCBC21-956-2.jpg', content_type: 'image/jpg')
item2.photos.attach(io: file7, filename: 'TCBC21-956-3.jpg', content_type: 'image/jpg')
item2.photos.attach(io: file8, filename: 'TCBC21-956-4.jpg', content_type: 'image/jpg')

puts `clear`
puts rabbit2

item3.main_photo.attach(io: file9, filename: 'VR232-1403-1.jpg', content_type: 'image/jpg')
item3.photos.attach(io: file10, filename: 'VR232-1403-2.jpg', content_type: 'image/jpg')
item3.photos.attach(io: file11, filename: 'VR232-1403-3.jpg', content_type: 'image/jpg')
item3.photos.attach(io: file12, filename: 'VR232-1403-4.jpg', content_type: 'image/jpg')

puts `clear`
puts rabbit

item4.main_photo.attach(io: file13, filename: 'PCVR17-129bis-1.jpg', content_type: 'image/jpg')
item4.photos.attach(io: file14, filename: 'PCVR17-129bis-2.jpg', content_type: 'image/jpg')
item4.photos.attach(io: file15, filename: 'PCVR17-129bis-3.jpg', content_type: 'image/jpg')
item4.photos.attach(io: file16, filename: 'PCVR17-129bis-4.jpg', content_type: 'image/jpg')

puts `clear`
puts rabbit2

item5.main_photo.attach(io: file17, filename: 'BC302-ML/tina-blanche_1.jpg', content_type: 'image/jpg')
item5.photos.attach(io: file18, filename: 'BC302-ML/tina-blanche_2.jpg?=2008202112', content_type: 'image/jpg')
item5.photos.attach(io: file19, filename: 'BC302-ML/madeleine-vintage_3.jpg?=2008202112', content_type: 'image/jpg')
item5.photos.attach(io: file20, filename: 'BC302-ML/madeleine-vintage_4.jpg?=2008202112', content_type: 'image/jpg')

item6.main_photo.attach(io: file21, filename: 'ACCS49-823/ACCS49-823-1', content_type: 'image/jpg')
item6.photos.attach(io: file22, filename: 'ACCS49-823/ACCS49-823-2', content_type: 'image/jpg')
item6.photos.attach(io: file23, filename: 'ACCS49-823/ACCS49-823-3', content_type: 'image/jpg')
item6.photos.attach(io: file24, filename: 'ACCS49-823/ACCS49-823-4', content_type: 'image/jpg')

item7.main_photo.attach(io: file25, filename: 'ACCC24-1354-1.jpg', content_type: 'image/jpg')
item7.photos.attach(io: file26, filename: 'ACCC24-1354-1.jpg', content_type: 'image/jpg')
item7.photos.attach(io: file27, filename: 'ACCC24-1354-1.jpg', content_type: 'image/jpg')
item7.photos.attach(io: file28, filename: 'ACCC24-1354-1.jpg', content_type: 'image/jpg')

item8.main_photo.attach(io: file29, filename: 'ACCC14-603-1.jpg', content_type: 'image/jpg')
item8.photos.attach(io: file30, filename: 'ACCC14-603-2.jpg', content_type: 'image/jpg')
item8.photos.attach(io: file31, filename: 'ACCC14-603-3.jpg', content_type: 'image/jpg')
item8.photos.attach(io: file32, filename: 'ACCC14-603-4.jpg', content_type: 'image/jpg')

item9.main_photo.attach(io: file33, filename: 'VMBC14-1289-1.jpg', content_type: 'image/jpg')
item9.photos.attach(io: file34, filename: 'VMBC14-1289-2.jpg', content_type: 'image/jpg')
item9.photos.attach(io: file35, filename: 'VMBC14-1289-3.jpg', content_type: 'image/jpg')
item9.photos.attach(io: file36, filename: 'VMBC14-1289-4.jpg', content_type: 'image/jpg')

item10.main_photo.attach(io: file37, filename: 'VMBE2-37-4.jpg', content_type: 'image/jpg')
item10.photos.attach(io: file38, filename: 'VMBE2-37-4.jpg', content_type: 'image/jpg')
item10.photos.attach(io: file39, filename: 'VMBE2-37-4.jpg', content_type: 'image/jpg')
item10.photos.attach(io: file40, filename: 'VMBE2-37-4.jpg', content_type: 'image/jpg')

item11.main_photo.attach(io: file41, filename: 'VMBG16-79bis/VMBG16-79-01.jpg', content_type: 'image/jpg')
item11.photos.attach(io: file42, filename: 'VMBG16-79bis/VMBG16-79-02.jpg?=2008202112', content_type: 'image/jpg')
item11.photos.attach(io: file43, filename: 'VMBG16-79bis/VMBG16-79-03.jpg?=2008202112', content_type: 'image/jpg')
item11.photos.attach(io: file44, filename: 'VMBG16-79bis/VMBG16-79-4.jpg?=2008202112', content_type: 'image/jpg')

item12.main_photo.attach(io: file47, filename: 'JRS24-ML/jupe-camile-zoom.jpg?=2008202113', content_type: 'image/jpg')
item12.photos.attach(io: file46, filename: 'JRS24-ML/2.jpg?=2008202113', content_type: 'image/jpg')

item13.main_photo.attach(io: file48, filename: 'JBG5-ML/camilla-champagne_4.jpg', content_type: 'image/jpg')
item13.photos.attach(io: file49, filename: 'JBG5-ML/camilla-champagne_2.jpg?=2008202113', content_type: 'image/jpg')
item13.photos.attach(io: file50, filename: 'JBG5-ML/camilla-champagne_3.jpg?=2008202113', content_type: 'image/jpg')
item13.photos.attach(io: file51, filename: 'JBG5-ML/champagne-zoom.jpg?=2008202113', content_type: 'image/jpg')

item14.main_photo.attach(io: file52, filename: 'JBE26-ML/top-et-jupe-1.jpg', content_type: 'image/jpg')
item14.photos.attach(io: file53, filename: 'JBE26-ML/top-et-jupe-bleu-2.jpg?=2008202113', content_type: 'image/jpg')
item14.photos.attach(io: file54, filename: 'JBE26-ML/jupebleu.jpg?=2008202113', content_type: 'image/jpg')
item14.photos.attach(io: file55, filename: 'JBE26-ML/4.jpg?=2008202113', content_type: 'image/jpg')

item15.main_photo.attach(io: file56, filename: 'TCBE30-ML/TCBE30-ML-1.jpg', content_type: 'image/jpg')
item15.photos.attach(io: file57, filename: 'BE672-ML/camille-bleu-argent-noir_2.jpg?=2008202113', content_type: 'image/jpg')
item15.photos.attach(io: file58, filename: 'BE672-ML/camille-bleu-argent-noir_3.jpg?=2008202113', content_type: 'image/jpg')
item15.photos.attach(io: file59, filename: 'BE672-ML/camille-bleu-argent-noir_4.jpg?=2008202113', content_type: 'image/jpg')

item16.main_photo.attach(io: file60, filename: 'JBG5-ML/camilla-champagne_4.jpg', content_type: 'image/jpg')
item16.photos.attach(io: file61, filename: 'JBG5-ML/camilla-champagne_2.jpg?=2008202113', content_type: 'image/jpg')
item16.photos.attach(io: file62, filename: 'JBG5-ML/camilla-champagne_3.jpg?=2008202113', content_type: 'image/jpg')
item16.photos.attach(io: file63, filename: 'JBG5-ML/champagne-zoom.jpg?=2008202113', content_type: 'image/jpg')

item17.main_photo.attach(io: file64, filename: 'PCRS10-129bis/PCRS10-129bis-1.jpg', content_type: 'image/jpg')
item17.photos.attach(io: file65, filename: 'PCRS10-129bis/PCRS10-129bis-2.jpg?=2008202113', content_type: 'image/jpg')
item17.photos.attach(io: file66, filename: 'PCRS10-129bis/PCRS10-129bis-3.jpg?=2008202113', content_type: 'image/jpg')
item17.photos.attach(io: file67, filename: 'PCRS10-129bis/PCRS10-129bis-4.jpg?=2008202113', content_type: 'image/jpg')

item18.main_photo.attach(io: file68, filename: 'PCRS11-37bis/PCRS11-37-1.jpg', content_type: 'image/jpg')
item18.photos.attach(io: file69, filename: 'PCRS11-37bis/PCRS11-37-2.jpg?=2008202113', content_type: 'image/jpg')
item18.photos.attach(io: file70, filename: 'PCRS11-37bis/PCRS11-37-3.jpg?=2008202113', content_type: 'image/jpg')
item18.photos.attach(io: file71, filename: 'PCRS11-37bis/PCRS11-37-4.jpg?=2008202113', content_type: 'image/jpg')

item19.main_photo.attach(io: file72, filename: 'PCNR58-37-B/PCNR58-37-B-1.jpg', content_type: 'image/jpg')
item19.photos.attach(io: file73, filename: 'PCNR58-37-B/PCNR58-37-B-2.jpg?=2008202113', content_type: 'image/jpg')
item19.photos.attach(io: file74, filename: 'PCNR58-37-B/PCNR58-37-B-3.jpg?=2008202113', content_type: 'image/jpg')
item19.photos.attach(io: file75, filename: 'PCNR58-37-B/PCNR58-37-B-4.jpg?=2008202113', content_type: 'image/jpg')

item20.main_photo.attach(io: file76, filename: 'ACCC16-597bis/ACCC16-597-1.jpg', content_type: 'image/jpg')
item20.photos.attach(io: file77, filename: 'ACCC16-597bis/ACCC16-597-2.jpg?=2008202113', content_type: 'image/jpg')
item20.photos.attach(io: file78, filename: 'ACCC16-597bis/ACCC16-597-3.jpg?=2008202113', content_type: 'image/jpg')
item20.photos.attach(io: file79, filename: 'ACCC16-597bis/ACCC16-597-4.jpg?=2008202113', content_type: 'image/jpg')
