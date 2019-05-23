## WIPE DB

puts "Wiping DB clean..."

Appointment.delete_all
Dog.delete_all
User.delete_all

# CREATE USERS

puts "Creating fake Joao..."

joao = User.new(
  email: 'joao@fetch.com',
  password: '123456',
  first_name: 'Joao',
  last_name: 'Lobo',
  profile_photo: Pathname.new("./app/assets/images/seed-user/joao.png").open,
  about: 'I love everything there is to love about dogs! Their smell, their bark, their flavour... everything!',
  phone_number: '(+31) 020 123 4567'
)
joao.save!

puts "Creating fake Max S..."

max_s = User.new(
  email: 'max.s@fetch.com',
  password: '123456',
  first_name: 'Max',
  last_name: 'Salemans',
  profile_photo: Pathname.new("./app/assets/images/seed-user/max-s.png").open,
  about: 'What kind of dog would I be? Easy — a frog!',
  phone_number: '(+31) 020 123 4567'
)
max_s.save!

puts "Creating fake Max T..."

max_t = User.new(
  email: 'max.t@fetch.com',
  password: '123456',
  first_name: 'Max',
  last_name: 'Teunissen',
  profile_photo: Pathname.new("./app/assets/images/seed-user/max-t.png").open,
  about: 'I wouldn\'t walk a dog for free. But you can walk mine if you like',
  phone_number: '(+31) 020 123 4567'
)
max_t.save!

puts "Creating fake Tristan..."

tristan = User.new(
  email: 'tristan@fetch.com',
  password: '123456',
  first_name: 'Tristan',
  last_name: 'Viney',
  profile_photo: Pathname.new("./app/assets/images/seed-user/tristan.png").open,
  about: 'Dogs are pretty cool, I guess. But how cool would they be if they could fly. Think about it.',
  phone_number: '(+31) 020 123 4567'
)
tristan.save!

# CREATE DOGS

puts "Creating fake King Charles..."

king_charles = Dog.new(
  name: 'Patch',
  breed: 'King Charles Cavalier',
  gender: 'Male',
  age: '8',
  description: 'Loves rolling in the grass and sniffing butts.',
  photo: Pathname.new("./app/assets/images/seed-dog/king-charles.jpg").open,
  location: 'Willem Leevendstraat 5, Amsterdam',
)

king_charles.user = tristan
king_charles.save!

puts "Creating fake Bulldog..."

bulldog = Dog.new(
  name: 'Bruce',
  breed: 'Bulldog',
  gender: 'Female',
  age: '10',
  description: 'Used to be an enforcer for the Itallian mafia. Now runs a family-owned pizza shop.',
  photo: Pathname.new("./app/assets/images/seed-dog/bulldog.jpeg").open,
  location: 'Willem Leevendstraat 5, Amsterdam',
)

bulldog.user = tristan
bulldog.save!

puts "Creating fake Beagle..."

beagle = Dog.new(
  name: 'Big Ears',
  breed: 'Beagle',
  gender: 'Female',
  age: '5',
  description: 'Can hear everything. Even your secrets. Beware.',
  photo: Pathname.new("./app/assets/images/seed-dog/beagle.jpg").open,
  location: 'Wenaahof 19, Amsterdam',
)

beagle.user = joao
beagle.save!

puts "Creating fake German Shepherd..."

german = Dog.new(
  name: 'Leon',
  breed: 'German Shepherd',
  gender: 'Male',
  age: '3',
  description: 'Loves posing for photos on mountains.',
  photo: Pathname.new("./app/assets/images/seed-dog/german.jpg").open,
  location: 'Maartensweer 2, Leidschendam',
)

german.user = max_t
german.save!

puts "Creating fake Golden Retriever..."

golden = Dog.new(
  name: 'Goldilocks',
  breed: 'Golden Retriever',
  gender: 'Male',
  age: '13',
  description: 'Has better hair than Donald Trump.',
  photo: Pathname.new("./app/assets/images/seed-dog/golden.jpeg").open,
  location: 'Jan van Riebeekstraat 20, Amsterdam',
)

golden.user = max_s
golden.save!

puts "Creating fake Whippet..."

whippet = Dog.new(
  name: 'Whippie',
  breed: 'whippet',
  gender: 'Female',
  age: '2',
  description: 'Runs faster than a speeding bullet on ecstasy.',
  photo: Pathname.new("./app/assets/images/seed-dog/whippet.jpg").open,
  location: 'Jan van Riebeekstraat 20, Amsterdam',
)

whippet.user = max_s
whippet.save!

# # CREATE APPOINTMENTS

# new_appointment = Appointment.create(
#     request_message: '',
#     date: '',
#     time_start: '',
#     time_end: ''
#   )

# new_appointment.dog = ''
# new_appointment.user = ''

puts "All seeds created successfully!"
