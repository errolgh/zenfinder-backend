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
LocationActivity.destroy_all
#don't use find_or_create_by with bcrypt. It does not play nicely when hitting auth_controller

# don't assign IDs; your database will assign and increment IDs
errol = User.create(
  user_name: "mindfulboi",
  password: "password",
  bio: "The mind is a tool which will become dull lest we take the time to sharpen it."
)

rocky = User.create(
  user_name: "rocky",
  password: "password",
  bio: "A warrior's greatest weapon is... patience."
)

paul = User.create(
  user_name: "paul",
  password: "password",
  bio: "Literally everything is the worst."
)


meditation = Activity.create(
  title: "Meditation",
  description: "to engage in mental exercise (such as concentration on one's breathing or repetition of a mantra) for the purpose of reaching a heightened level of spiritual awareness, mental acuity, or mindfulness."
)

yoga = Activity.create(
  title: "Yoga",
  description: "a Hindu spiritual and ascetic discipline, a part of which, including breath control, simple meditation, and the adoption of specific bodily postures, is widely practiced for health and relaxation."
)

tai_chi = Activity.create(
  title: "Tai Chi",
  description: "an ancient Chinese discipline of meditative movements practiced as a system of exercises."
)

location1 = Location.create(
   title: "Meditation Park",
   latitude: 38.896138,
   longitude: -77.033255,
   description: "Quiet place to meditate.",
   address: "123 Main Street, Washington D.C.",
   rating: 4.5
)
location2 = Location.create(
   title: "Ur Yoga Studio",
   latitude: 38.899652,
   longitude: -77.019734,
   description: "An Anusara Yoga studio.",
   address: "456 Other Street, Washington D.C.",
   rating: 4.5
)
location3 = Location.create(
   title: "Cozy Park",
   latitude: 38.902021,
   longitude: -77.030945,
   description: "Lots of bushes and benches.",
   address: "4200 Long Street, Washington D.C.",
   rating: 4.5
)
location4 = Location.create(
   title: "Secret Spot",
   latitude: 38.909021,
   longitude: -77.030955,
   description: "Literally hidden.",
   address: "460 Short Street, Washington D.C.",
   rating: 5.0
)
location5 = Location.create(
   title: "Typical Zen Garden",
   latitude: 38.909921,
   longitude: -77.031955,
   description: "Spiral out, smoker friendly.",
   address: "601 Dabbonem Avenue, Washington D.C.",
   rating: 5.0
)

review1 = Review.create(
  title: "Cool Place",
  description: "I can come here and practice without senpai noticing me.",
  rating: 4.2,
  user_id: paul.id,
  location_id: location1.id
)
review2 = Review.create(
  title: "Cool Place",
  description: "Feels like I'm in tucked away in northern Thailand. I come here almost everyday to practice mindfulness. I am considering starting a meditation group here!",
  rating: 4.7,
  user_id: errol.id,
  location_id: location1.id
)
review3 = Review.create(
  title: "Cool Place",
  description: "It was iight. I guess I'd come back... whatever",
  rating: 4.7,
  user_id: rocky.id,
  location_id: location1.id
)
review4 = Review.create(
  title: "Cool Place",
  description: "I can come here and practice without senpai noticing me.",
  rating: 4.2,
  user_id: paul.id,
  location_id: location2.id
)
review5 = Review.create(
  title: "Cool Place",
  description: "Great place, can't say enought about it!",
  rating: 4.7,
  user_id: errol.id,
  location_id: location2.id
)
review6 = Review.create(
  title: "Cool Place",
  description: "It was iight. I guess I'd come back... whatever",
  rating: 4.7,
  user_id: rocky.id,
  location_id: location2.id
)
review7 = Review.create(
  title: "Cool Place",
  description: "I can come here and practice without senpai noticing me.",
  rating: 4.2,
  user_id: paul.id,
  location_id: location3.id
)
review8 = Review.create(
  title: "Cool Place",
  description: "Met some cool humans here.",
  rating: 4.7,
  user_id: errol.id,
  location_id: location3.id
)
review9 = Review.create(
  title: "Cool Place",
  description: "It was iight. I guess I'd come back... whatever",
  rating: 4.7,
  user_id: rocky.id,
  location_id: location3.id
)
review10 = Review.create(
  title: "Cool Place",
  description: "I can come here and practice without senpai noticing me.",
  rating: 4.2,
  user_id: paul.id,
  location_id: location4.id
)
review11 = Review.create(
  title: "Cool Place",
  description: "Never knew this place existed.",
  rating: 4.7,
  user_id: errol.id,
  location_id: location4.id
)
review12 = Review.create(
  title: "Cool Place",
  description: "It was iight. I guess I'd come back... whatever",
  rating: 4.7,
  user_id: rocky.id,
  location_id: location4.id
)
review13 = Review.create(
  title: "Cool Place",
  description: "I can come here and practice without senpai noticing me.",
  rating: 4.2,
  user_id: paul.id,
  location_id: location5.id
)
review14 = Review.create(
  title: "Cool Place",
  description: "I come here almost everyday..",
  rating: 4.7,
  user_id: errol.id,
  location_id: location5.id
)
review15 = Review.create(
  title: "Cool Place",
  description: "It was iight. I guess I'd come back... whatever",
  rating: 4.7,
  user_id: rocky.id,
  location_id: location5.id
)

location_activity1  = LocationActivity.create(
  location_id: location1.id,
  activity_id: meditation.id
)

location_activity2  = LocationActivity.create(
  location_id: location1.id,
  activity_id: yoga.id
)

location_activity3  = LocationActivity.create(
  location_id: location2.id,
  activity_id: yoga.id
)

location_activity4  = LocationActivity.create(
  location_id: location3.id,
  activity_id: meditation.id
)

location_activity5  = LocationActivity.create(
  location_id: location3.id,
  activity_id: yoga.id
)

location_activity6  = LocationActivity.create(
  location_id: location4.id,
  activity_id: tai_chi.id
)

location_activity7  = LocationActivity.create(
  location_id: location5.id,
  activity_id: meditation.id
)

location_activity8  = LocationActivity.create(
  location_id: location5.id,
  activity_id: yoga.id
)

location_activity9  = LocationActivity.create(
  location_id: location5.id,
  activity_id: tai_chi.id
)

user_activity1 = UserActivity.create(
  user_id: errol.id,
  activity_id: meditation.id
)

user_activity2 = UserActivity.create(
  user_id: errol.id,
  activity_id: yoga.id
)

user_activity3 = UserActivity.create(
  user_id: rocky.id,
  activity_id: meditation.id
)

user_activity4 = UserActivity.create(
  user_id: rocky.id,
  activity_id: yoga.id
)

user_activity5 = UserActivity.create(
  user_id: rocky.id,
  activity_id: tai_chi.id
)

user_activity6 = UserActivity.create(
  user_id: paul.id,
  activity_id: yoga.id
)

puts "/seeds.rb ran successfully."
