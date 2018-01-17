require 'random_data'

 # Create Topics
  15.times do
    Topic.create!(
     name: RandomData.random_sentence,
     description: RandomData.random_paragraph
      )
  end
  topics = Topic.all
 # Create Posts
 50.times do
 # #1
   Post.create!(
     topic:  topics.sample,
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
  Post.find_or_create_by!(
     title: "Carolie is the best",
     body: "Yes it's true" )

   Comment.find_or_create_by!(
      post: posts.Post,
      body: "It's still true"
      )
 # Create Questions
 100.times do
    Question.create!(
     title: RandomData.random_sentence,
     body: RandomData.random_paragraph,
     resolved: false
     )
    
 
 puts "Seed finished"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"