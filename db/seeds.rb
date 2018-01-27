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
<<<<<<< HEAD
  Post.find_or_create_by!(
     title: "Carolie is the best",
     body: "Yes it's true" )

=======
  Post2.find_or_create_by!(
     title: "Carolie is the best",
     body: RandomData.random_paragraph
   )
 end
>>>>>>> cae9a8cc71c2f21f1cb343e1961c5ffab627fbba
   Comment.find_or_create_by!(
      post: posts.Post,
      body: "It's still true"
<<<<<<< HEAD
      )
 # Create Questions
 100.times do
    Question.create!(
     title: RandomData.random_sentence,
     body: RandomData.random_paragraph,
     resolved: false
     )
    
 
=======
    )
 end
>>>>>>> cae9a8cc71c2f21f1cb343e1961c5ffab627fbba
 puts "Seed finished"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"