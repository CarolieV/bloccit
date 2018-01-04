require 'rails_helper'

RSpec.describe Advertisement, type: :model do
    let (:advertisements) { Advertisement.create! }
    
    describe "attributes" do
        it "should respond to title" do
            expect(:advertisements).to_respond_to(:title)
        end
        it "should respond to copy" do
            expect(:advertisements).to_respond_to(:copy)
        end
        it "should respond to price" do
            expect(:advertisements).to_respond_to(:price)
        end
    end
end
