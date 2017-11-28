# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

RelationshipType.create([
    'IMMEDIATE_FAMILY', 'FRIEND', 'EXTENDED_FAMILY', 'COWORKER', 'NETWORK'
  ].map{|n| {name: n} }
)
ContactInfoType.create([
    'PHONE_NUMBER', 'ADDRESS', 'EMAIL_ADDRESS', 'FACEBOOK', 'SKYPE', 'FACETIME'
  ].map{|n| {name: n} }
)
ContactEventType.create([
    'CALL', 'RESTAURANT', 'GET_TOGETHER'
  ].map{|n| {name: n} }
)
