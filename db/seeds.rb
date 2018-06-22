# frozen_string_literal: true

require 'faker'

10.times do
  Blog.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
  )
end

puts '10 blog posts created'

5.times do
  Skill.create!(
    title: Faker::Lorem.sentence,
    percent_utilized: Faker::Number.number(2)
  )
end

puts '5 skills created'

9.times do
  Portfolio.create!(
    title: Faker::Lorem.sentence,
    subtitle: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph,
    main_image: Faker::Placeholdit.image,
    thumb_image: Faker::Placeholdit.image('50x50')
  )
end

puts '9 porfolio items created'
