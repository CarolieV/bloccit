require 'rails_helper'

RSpec.describe Question, type: :model do
 let(:question) { Question.create!(title: "Questions?", body: "New Question Body") }
 
 # #2
   describe "attributes" do
     it "has title and body and resolved attributes" do
       expect(question).to have_attributes(title: "Questions?", body: "New Question Body", resolved:boolean)
     end
   end
 end
