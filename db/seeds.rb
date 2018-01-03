require 'random_data'

 # Create Posts
 50.times do
 # #1
   Post.create!(
 # #2
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 
 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end
  Post2.find_or_create_by!(
     title: "Carolie is the best"
     body: "Yes it's true"
   )
  end
   Comment.find_or_create_by!(
      post: posts.Post2
      body: "It's still true"
    
    
    )
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"