# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.create({title:"Welcome!",
  url:"www.youtube.com/embed/Wz5Z0JTmjAg",
  tag:"welcome",
  views: 0
})

Video.create({title:"Dance!",
  url:"www.youtube.com/embed/60og9gwKh1o",
  tag:"dance",
  views: 0
})
