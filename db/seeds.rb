
3.times do |topic|
  Topic.create!(
    title:"Topic #{topic}"
    )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body:"Lorem Ipsum is simply 
    dummy text of the printing and 
    typesetting industry. Lorem Ipsum 
    has been the industry's standard dummy 
    text ever since the 1500s, when an 
    unknown printer took a galley of type 
    and scrambled it to make a type specimen book.
     It has survived not only five centuries, but also the leap 
     into electronic typesetting, remaining essentially unchanged. It was popularised 
     in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more 
     recently with desktop publishing software like Aldus PageMaker including
      versions of Lorem Ipsum.",
    topic_id:Topic.last.id
  )
end

puts "10 blogposts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio|
  Portfolio.create!(
    title:"Portfolio title: #{portfolio}",
    subtitle:"Ruby on Rails",
    body:"Lorem ipsum dolor sit amet, 
    consectetur adipiscing elit, sed do 
      usmod tempor incididunt ut labore et 
      olore magna aliqua. Ut enim ad
       minim veniam, quis nostrud exercitation 
       ullamco laboris nisi ut aliquip ex ea commodo 
       consequat. Duis aute irure dolor in 
       reprehenderit in voluptate velit esse 
       cillum dolore eu fugiat nulla pariatur. 
       cepteur sint occaecat cupidatat 
       non proident, sunt in culpa qui officia 
       deserunt mollit anim id est laborum.",
    main_img:"http://placehold.it/600x400",
    thumb_img:"http://placehold.it/350x200"
  )
end

1.times do |portfolio|
  Portfolio.create!(
    title:"Portfolio title: #{portfolio}",
    subtitle:"Angular",
    body:"Lorem ipsum dolor sit amet, 
    consectetur adipiscing elit, sed do 
      usmod tempor incididunt ut labore et 
      olore magna aliqua. Ut enim ad
       minim veniam, quis nostrud exercitation 
       ullamco laboris nisi ut aliquip ex ea commodo 
       consequat. Duis aute irure dolor in 
       reprehenderit in voluptate velit esse 
       cillum dolore eu fugiat nulla pariatur. 
       cepteur sint occaecat cupidatat 
       non proident, sunt in culpa qui officia 
       deserunt mollit anim id est laborum.",
    main_img:"http://placehold.it/600x400",
    thumb_img:"http://placehold.it/350x200"
  )
end

puts "9 portfolio items created"