# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


kroger = Store.create(name: "Kroger")
ht = Store.create(name: "Harris Teeter")
target = Store.create(name: "Target")
wf = Store.create(name: "Whole Foods")
tjs = Store.create(name: "Trader Joes")
kings = Store.create(name: "Kings Red & White")

milk = Item.create(name: "milk")
handh = Item.create(name: "half and half")
cheese = Item.create(name: "cheese")
kale = Item.create(name: "kale")
ritz = Item.create(name: "Ritz")
beans = Item.create(name: "black beans")
salsa = Item.create(name: "salsa")
tuna = Item.create(name: "tuna")
chai = Item.create(name: "chai")

dairy = List.create(name: "Dairy")
milk.list = dairy
milk.save
handh.list = dairy
handh.save
cheese.list = dairy
cheese.save

beans.store = kroger
beans.save
tuna.store = kroger
tuna.save
ritz.store = target
ritz.save
chai.store = target
chai.save
