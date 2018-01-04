require 'rails_helper'
include RandomData
RSpec.describe AdvertisementsController, type: :controller do
let (:my_ad) do
  Advertisement.create(
    id: 1,
    title: RandomData.random_sentence,
    copy:  RandomData.random_paragraph,
    price: 99
    )
  end 
  
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

  it "assigns [my_ad] to @advertisements" do
    get :index
    expect(assigns(:advertisements)).to_eq([my_ad])
  end
end
  
  describe "GET show" do
     it "returns http success" do
 # #16
       get :show, {id: my_post.id}
       expect(response).to have_http_status(:success)
     end
     it "renders the #show view" do
 # #17
       get :show, {id: my_ad.id}
       expect(response).to render_template :show
     end
 
     it "assigns my_ad to @advertisement" do
       get :show, {id: my_ad.id}
 # #18
       expect(assigns(:advertisement)).to eq(my_post)
     end
   end

 
    describe "POST create" do
 # #4
      it "increases the number of advertisements by 1" do
        expect{post :create, advertisement: {title: RandomData.random_sentence, body: RandomData.random_paragraph, price: 99}}.to change(Advertisement,:count).by(1)
      end
      
      it "assigns the new advertisement to @advertisement" do
        post :create, advertisement: {title: RandomData.random_sentence, body: RandomData.random_paragraph, price: 99}
       expect(assigns(:advertisement)).to eq Advertisement.last
     end
    
      it "redirects to the new advertisement" do
        post :create, advertisement: {title: RandomData.random_sentence, body: RandomData.random_paragraph, price: 99}
        expect(assigns(:advertisement)).to eq Advertisement.last
      end
    end
  end
end
