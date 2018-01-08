# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times { |i|
  User.create(
    first_name: "first name #{i}",
              last_name: "last name #{i}",
              email: "email#{i}@example.com"
  ).tap { |user|
    5.times { |p|
      user.posts.create(
        title: "Post title #{p}",
        body: "Post body #{p}"
      )
    }
  }
}