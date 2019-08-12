# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Activity.destroy_all
Location.destroy_all


yoga = Activity.find_or_create_by(
  id: 1,
  title: "Yoga",
  description: "a Hindu spiritual and ascetic discipline, a part of which, including breath control, simple meditation, and the adoption of specific bodily postures, is widely practiced for health and relaxation."
)

meditation = Activity.find_or_create_by(
  id: 2,
  title: "Meditation",
  description: "to engage in mental exercise (such as concentration on one's breathing or repetition of a mantra) for the purpose of reaching a heightened level of spiritual awareness, mental acuity, or mindfulness."
)

tai_chi = Activity.find_or_create_by(
  id: 3,
  title: "Tai Chi",
  description: "an ancient Chinese discipline of meditative movements practiced as a system of exercises."
)

location1 = Location.find_or_create_by(
   title: "Meditation Park",
   latitude: 38.896138,
   longitude: -77.033255,
   description: "Quiet place to meditate.",
   address: "123 Main Street, Washington D.C.",
   rating: 4.5,
   activity_id: meditation.id
)
location2 = Location.find_or_create_by(
   title: "Ur Yoga Studio",
   latitude: 38.899652,
   longitude: -77.019734,
   description: "An Anusara Yoga studio.",
   address: "456 Other Street, Washington D.C.",
   rating: 4.5,
   activity_id: yoga.id
)
location3 = Location.find_or_create_by(
   title: "Cozy Park",
   latitude: 38.902021,
   longitude: -77.030945,
   description: "Lots of bushes and benches.",
   address: "4200 Long Street, Washington D.C.",
   rating: 4.5,
   activity_id: tai_chi.id
)
