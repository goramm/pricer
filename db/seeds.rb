# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p 'Start seeding...'

shops = Shop.create([
  {
    host: "www.der-rollenshop.de",
    price_selector: "meta[itemprop='price']",
    currency_selector: "meta[itemprop='priceCurrency']",
    description_selector: "meta[name='description']"
  },
  {
    host: "bladeville.com",
    price_selector: "span[itemprop='price']",
    currency_selector: "meta[itemprop='priceCurrency']",
    description_selector: "meta[name='description']"
  },
  {
    host: "www.grindhouse.eu",
    price_selector: "meta[itemprop='price']",
    currency_selector: "meta[itemprop='priceCurrency']",
    description_selector: "meta[name='description']"
  },
  {
    host: "www.inercia.com",
    price_selector: "meta[itemprop='price']",
    currency_selector: "meta[itemprop='priceCurrency']",
    description_selector: "meta[name='description']"
  },
  {
    host: "www.rollernco.com",
    price_selector: "span[itemprop='price']",
    currency_selector: "meta[itemprop='priceCurrency']",
    description_selector: "meta[name='description']"
  },
  {
    host: "www.skatepro.net",
    price_selector: "span[itemprop='price']",
    currency_selector: "meta[itemprop='priceCurrency']",
    description_selector: "meta[name='description']"
  },
  {
    host: "www.prosports.si",
    price_selector: "span[itemprop='price']",
    currency_selector: "meta[itemprop='priceCurrency']",
    description_selector: "meta[name='description']"
  },
  {
    host: "www.nomadeshop.com",
    price_selector: "div[itemprop='price']",
    currency_selector: "meta[itemprop='priceCurrency']",
    description_selector: "meta[name='description']"
  },
  {
    host: "www.locoskates.com",
    price_selector: "meta[property='og:price:amount']",
    currency_selector: "meta[itemprop='priceCurrency']",
    description_selector: "meta[name='description']"
  },
  {
    host: "www.skamidan.com",
    price_selector: ".legacy-itemprop-offers .woocommerce-Price-amount.amount bdi",
    currency_selector: ".legacy-itemprop-offers .woocommerce-Price-currencySymbol",
    description_selector: "meta[name='description']",
  },
  {
    host: "www.coolskates.cz",
    price_selector: "meta[itemprop='price']",
    currency_selector: "meta[itemprop='priceCurrency']",
    description_selector: "meta[name='description']",
  },
  {
    host: "www.slidingtiger.eu",
    price_selector: "#SingleProductTitle > div:first > div",
    currency_selector: "#SingleProductTitle > div:first > div",
    description_selector: "meta[name='description']",
  },
  {
    host: "www.thisissoul.com",
    price_selector: ".product__price .price__regular .price-item",
    currency_selector: ".product__price .price__regular .price-item",
    description_selector: "meta[name='description']",
  },
  {
    host: "www.xtremeinn.com",
    price_selector: "meta[itemprop='price']",
    currency_selector: "meta[itemprop='priceCurrency']",
    description_selector: "meta[name='description']",
  },
])

product_1 = Product.create(name: 'Powerslide HC Evo Pro 90 2021', image_url: 'https://media.grindhouse.eu/CommerceManager/Products/7598/product_7598_60084cc343759_large.jpg')
product_1.pages.create([
  {
    url: 'https://www.der-rollenshop.de/Powerslide-Inline-Skates-HC-Evo-Pro-90',
    shop: shops[0],
  },
  {
    url: 'https://bladeville.com/powerslide-hardcore-evo-pro-90-black-red.html',
    shop: shops[1],
  },
  {
    url: 'https://www.grindhouse.eu/en/shop/inline-skates/powerslide-hc-evo-pro-90.html',
    shop: shops[2],
  },
  {
    url: 'https://www.inercia.com/en/powerslide-hc-evo-pro-90.html',
    shop: shops[3],
  },
  {
    url: 'https://www.rollernco.com/en/completes-freeskates/11651-hc-evo-pro-90-powerslide.html',
    shop: shops[4],
  },
  {
    url: 'https://www.skatepro.net/121-34775.htm',
    shop: shops[5],
  },
  {
    url: 'https://www.prosports.si/prosti-cas/1531-rolerji-powerslide-urban-skates-hc-evo-pro-90/#/velikost-43',
    shop: shops[6],
  },
  {
    url: 'https://www.nomadeshop.com/roller/roller-freeskate/powerslide-roller-freeskate-hc-evo-pro-90-noir-30381.html',
    shop: shops[7],
  },
  {
    url: 'https://www.locoskates.com/products/powerslide-hardcore-evo-pro-90-2021-skates',
    shop: shops[8],
  },
  {
    url: 'https://www.skamidan.com/produkt/powerslide-hc-evo-pro-90-black-2021-trinity-x-freestyle-inlineskates/',
    shop: shops[9],
  },
  {
    url: 'https://www.thisissoul.com/products/hc-evo-pro?variant=39943259455643',
    shop: shops[12],
  },
  {
    url: 'https://www.xtremeinn.com/extreme_sports/powerslide-hc-evo-pro-90-inline-skates/137966379/p',
    shop: shops[13],
  },
])

product_2 = Product.create(name: 'Powerslide Next 110 Pro', image_url: 'https://media.grindhouse.eu/CommerceManager/Products/7294/product_7294_5e2095c2451a3_medium.jpg')
product_2.pages.create([
  {
    url: 'https://bladeville.com/powerslide-next-110-pro-black.html',
    shop: shops[1],
  },
  {
    url: 'https://www.grindhouse.eu/en/shop/inline-skates/powerslide-next-110-pro-black.html',
    shop: shops[2],
  },
])

product_3 = Product.create(name: 'FR1 310 Red', image_url: 'https://media.grindhouse.eu/CommerceManager/Products/6501/product_6501_5b699623b5609_medium.jpg')
product_3.pages.create([
  {
    url: 'https://bladeville.com/fr-fr1-310-red.html',
    shop: shops[1],
  },
  {
    url: 'https://www.grindhouse.eu/en/shop/inline-skates/fr-fr1-310-red.html',
    shop: shops[2],
  },
  {
    url: 'https://www.inercia.com/en/fr-skates-fr1-310-red.html',
    shop: shops[3],
  },
  {
    url: 'https://www.coolskates.cz/en/freeride/fr1-310-red/',
    shop: shops[10],
  },
  {
    url: 'https://www.slidingtiger.eu/en/Home/Skate/UNIV-FRSK-FR1310-RD',
    shop: shops[11],
  },
])

p 'End seeding!'