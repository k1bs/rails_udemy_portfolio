# frozen_string_literal: true

require 'faker'

prng = Random.new

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts '3 topics created'

10.times do
  Blog.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph,
    topic_id: prng.rand(1..3)
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

7.times do
  Portfolio.create!(
    title: Faker::Lorem.sentence,
    subtitle: 'Ruby on Rails',
    body: Faker::Lorem.paragraph,
    main_image: Faker::Placeholdit.image,
    thumb_image: Faker::Placeholdit.image('50x50')
  )
end

2.times do
  Portfolio.create!(
    title: Faker::Lorem.sentence,
    subtitle: 'React',
    body: Faker::Lorem.paragraph,
    main_image: Faker::Placeholdit.image,
    thumb_image: Faker::Placeholdit.image('50x50')
  )
end

puts '9 porfolio items created'

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts '3 technologies created'