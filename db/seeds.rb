# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Activity.destroy_all
Location.destroy_all
User.destroy_all
Review.destroy_all

errol = User.find_or_create_by(
  id: 1,
  user_name: "mindfulboi",
  bio: "The mind is a tool which will become dull lest we take the time to sharpen it."
)

rocky = User.find_or_create_by(
  id: 2,
  user_name: "Rocky",
  bio: "A warrior's greatest weapon is... patience."
)

paul = User.find_or_create_by(
  id: 3,
  user_name: "Paul",
  bio: "Literally everything is the worst."
)


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
   id: 1,
   title: "Meditation Park",
   latitude: 38.896138,
   longitude: -77.033255,
   description: "Quiet place to meditate.",
   address: "123 Main Street, Washington D.C.",
   rating: 3.9,
   activity_id: meditation.id
)
location2 = Location.find_or_create_by(
   id: 2,
   title: "Ur Yoga Studio",
   latitude: 38.899652,
   longitude: -77.019734,
   description: "An Anusara Yoga studio.",
   address: "456 Other Street, Washington D.C.",
   rating: 4.3,
   activity_id: yoga.id
)
location3 = Location.find_or_create_by(
   id: 3,
   title: "Cozy Park",
   latitude: 38.902021,
   longitude: -77.030945,
   description: "Lots of bushes and benches.",
   address: "4200 Long Street, Washington D.C.",
   rating: 4.5,
   activity_id: tai_chi.id
)
location4 = Location.find_or_create_by(
   id: 4,
   title: "Secret Spot",
   latitude: 38.909021,
   longitude: -77.030955,
   description: "Literally hidden.",
   address: "460 Short Street, Washington D.C.",
   rating: 5.0,
   activity_id: tai_chi.id
)
location5 = Location.find_or_create_by(
   id: 5,
   title: "Typical Zen Garden",
   latitude: 38.909921,
   longitude: -77.031955,
   description: "Spiral out, smoker friendly.",
   address: "601 Dabbonem Avenue, Washington D.C.",
   rating: 5.0,
   activity_id: meditation.id
)

review1 = Review.find_or_create_by(
  description: "I can come here and practice without senpai noticing me.",
  rating: 4.2,
  user_id: 3,
  location_id: 1
)
review2 = Review.find_or_create_by(
  description: "Feels like I'm in tucked away in northern Thailand. I come here almost everyday to practice mindfulness. I am considering starting a meditation group here!",
  rating: 4.7,
  user_id: 1,
  location_id: 1
)
review3 = Review.find_or_create_by(
  description: "It was iight. I guess I'd come back... whatever",
  rating: 4.7,
  user_id: 2,
  location_id: 1
)
review4 = Review.find_or_create_by(
  description: "I can come here and practice without senpai noticing me.",
  rating: 4.2,
  user_id: 3,
  location_id: 2
)
review5 = Review.find_or_create_by(
  description: "Feels like I'm in tucked away in northern Thailand. I come here almost everyday to practice mindfulness. I am considering starting a meditation group here!",
  rating: 4.7,
  user_id: 1,
  location_id: 2
)
review6 = Review.find_or_create_by(
  description: "It was iight. I guess I'd come back... whatever",
  rating: 4.7,
  user_id: 2,
  location_id: 2
)
review7 = Review.find_or_create_by(
  description: "I can come here and practice without senpai noticing me.",
  rating: 4.2,
  user_id: 3,
  location_id: 3
)
review8 = Review.find_or_create_by(
  description: "Feels like I'm in tucked away in northern Thailand. I come here almost everyday to practice mindfulness. I am considering starting a meditation group here!",
  rating: 4.7,
  user_id: 1,
  location_id: 3
)
review9 = Review.find_or_create_by(
  description: "It was iight. I guess I'd come back... whatever",
  rating: 4.7,
  user_id: 2,
  location_id: 3
)
review10 = Review.find_or_create_by(
  description: "I can come here and practice without senpai noticing me.",
  rating: 4.2,
  user_id: 3,
  location_id: 4
)
review11 = Review.find_or_create_by(
  description: "Feels like I'm in tucked away in northern Thailand. I come here almost everyday to practice mindfulness. I am considering starting a meditation group here!",
  rating: 4.7,
  user_id: 1,
  location_id: 4
)
review12 = Review.find_or_create_by(
  description: "It was iight. I guess I'd come back... whatever",
  rating: 4.7,
  user_id: 2,
  location_id: 4
)
review13 = Review.find_or_create_by(
  description: "I can come here and practice without senpai noticing me.",
  rating: 4.2,
  user_id: 3,
  location_id: 5
)
review14 = Review.find_or_create_by(
  description: "Feels like I'm in tucked away in northern Thailand. I come here almost everyday to practice mindfulness. I am considering starting a meditation group here!",
  rating: 4.7,
  user_id: 1,
  location_id: 5
)
review15 = Review.find_or_create_by(
  description: "It was iight. I guess I'd come back... whatever",
  rating: 4.7,
  user_id: 2,
  location_id: 5
)
