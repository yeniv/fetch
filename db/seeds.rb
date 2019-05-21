## WIPE DB

User.delete_all
# Dog.delete_all
# Appointment.delete_all

# CREATE USERS

User.create(
  email: 'joao@fetch.com',
  password: '123456',
  first_name: 'Joao',
  last_name: 'Lobo',
  profile_picture: '',
  about: 'I love everything there is to love about dogs! Their smell, their bark, their flavour... everything!',
  phone_number: '(+31) 020 123 4567'
)

User.create(
  email: 'max.s@fetch.com',
  password: '123456',
  first_name: 'Max',
  last_name: 'Salemans',
  profile_picture: '',
  about: 'What kind of dog would I be? Easy — a frog!',
  phone_number: '(+31) 020 123 4567'
)

User.create(
  email: 'max.t@fetch.com',
  password: '123456',
  first_name: 'Max',
  last_name: 'Teunissen',
  profile_picture: '',
  about: 'I wouldn\'t walk a dog for free. But you can walk mine if you like',
  phone_number: '(+31) 020 123 4567'
)

User.create(
  email: 'tristan@fetch.com',
  password: '123456',
  first_name: 'Tristan',
  last_name: 'Viney',
  profile_picture: '',
  about: 'Dogs are pretty cool, I guess. But how cool would they be if they could fly. Think about it.',
  phone_number: '(+31) 020 123 4567'
)
# CREATE DOGS

# new_dog = Dog.new(
#   name: '',
#   breed: '',
#   gender: '',
#   age: '',
#   description: '',
#   photo: '',
#   location: '',
# )

# new_dog.user = ''

# # CREATE APPOINTMENTS

# new_appointment = Appointment.create(
#     request_message: '',
#     date: '',
#     time_start: '',
#     time_end: ''
#   )

# new_appointment.dog = ''
# new_appointment.user = ''
