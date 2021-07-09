if Rails.env == 'development'
  Lead.create(
    first_name: 'Derp',
    last_name: 'Derpins',
    gender: "male",
    age: 20,
    email: 'derp@derps.com',
    phone_number: 1112221234,
    street: '123 street',
    city: 'Somewhere',
    state: 'UT',
    zip: 12345,
    active_contact: true,
    is_army: false,
    comment: 'oh i have comments alright',
    note: 'this kid was solid, definitely want him in'
  )
end

User.create(
  email: 'ricky.pinon@gmail.com',
  password: 'THISissomething',
  password_confirmation: 'THISissomething'
)
