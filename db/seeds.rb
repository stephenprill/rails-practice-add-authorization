sally = Student.create!(
  name: 'Singing Sally',
  email: 'sally@example.com',
  password: 'password'
)

dave = Student.create!(
  name: 'Diva Dave',
  email: 'dave@example.com',
  password: 'password'
)

danielle = Student.create!(
  name: 'Drumming Danielle',
  email: 'danielle@example.com',
  password: 'password'
)

brad = Student.create!(
  name: 'Belting Brad',
  email: 'brad@example.com',
  password: 'password'
)

tina = Student.create!(
  name: 'Twirling Tina',
  email: 'tina@example.com',
  password: 'password'
)

jazz_hands = Club.create!(name: 'Jazz Hands')
aca_elite = Club.create!(name: 'Aca-Elite')

# sally co-leads the jazz_hands with dave
Participation.create!(
  student: sally,
  club: jazz_hands,
  leader: true
)

Participation.create!(
  student: dave,
  club: jazz_hands,
  leader: true
)

# danielle and brad are in the jazz_hands

Participation.create!(
  student: danielle,
  club: jazz_hands,
  leader: false
)

Participation.create!(
  student: brad,
  club: jazz_hands,
  leader: false
)

# tina leads the aca_elite
Participation.create!(
  student: tina,
  club: aca_elite,
  leader: true
)

# sally sings in aca_elite
Participation.create!(
  student: sally,
  club: aca_elite,
  leader: false
)
