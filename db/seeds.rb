3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end
puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}" ,
    body: "A paragraph (from the Ancient Greek παράγραφος
     paragraphos, to write beside or written beside)
     is a self-contained unit of a discourse in
     writing dealing with a particular point or idea.
     A paragraph consists of one or more sentences.
     [1] Though not required by the syntax of any language,
     paragraphs are usually an expected part of formal writing,
     used to organize longer prose." ,
     topic_id: Topic.last.id
  )
end

puts "10 blogs posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end
puts "5 skill created"


8.times do |portfolio_item|
  Portfolio.create(
    title: "portfolios title: #{portfolio_item}",
    subtitle: "Ruby on rails",
    body: "Though not required by the syntax of any language,
    paragraphs are usually an expected part of formal writing",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200")
end


1.times do |portfolio_item|
  Portfolio.create(
    title: "portfolios title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Though not required by the syntax of any language,
    paragraphs are usually an expected part of formal writing",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200")
end
puts "9 porfolio items created"



# 3.times do |technology|
#   Portfolio.last.technologies.create!(
#     name: "Technology #{technology}"
#   )
# end
puts "3 technologies created"
