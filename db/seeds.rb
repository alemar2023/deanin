# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
ActiveRecord::Base.transaction do
  10 .times do |i|
    user = Post.create(
      title: Faker::Movies::HarryPotter.character,
      password: 'password',
    )
    #puts "User #{user.id} create successfully"
    puts "User #{i + 1} create successfully"
  end
end

ActiveRecord::Base.transaction do
  h = 0
  10 .times do |i|
    h = h  +  1
    user = Post.create(
      title: Faker::Movies::HarryPotter.character,
      body: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4),
      user_id: h
    )
    #puts "User #{user.id} create successfully"
    puts "Post #{i + 1} create successfully"
  end
end







