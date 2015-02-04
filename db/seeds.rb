# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# to reset the db and add new changes specified here, use 'bundle exec rake db:migrate:reset'
# use 'rake db:seed:<environment>' to populate a specific db, like 'rake db:seed:test'
Staff.create!(name: "Dr Crabblesnitch", username_log: "crab.sni",email: "cr@sn.net" password: "h4ck3d", password_confirmation: "h4ck3d",activated: true, activated_at: Time.zone.now)
User.find(1).update_attributes(role: 3)
