require 'faker'

User.destroy_all
Question.destroy_all
Answer.destroy_all
Comment.destroy_all
Vote.destroy_all

10.times do
  User.create(name: Faker::Name.name)
  Question.create(title: Faker::Lorem.words, body: Faker::Lorem.paragraph)
  Answer.create(body: Faker::Lorem.paragraph)
  Comment.create(body: Faker::Lorem.paragraph)
  Vote.create(value: 1)
end
