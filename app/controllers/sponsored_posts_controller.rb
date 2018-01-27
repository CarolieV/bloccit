class SponsoredPostsController < ApplicationController
 def show
      @sponsoredpost = SponsoredPost.find(params[:id])
      
 end

  def new
      @topic = Topic.find(params[:topic_id])
      @post = SponsoredPost.new
  end

  def edit
    @sponsoredpost = SponsoredPost.find(params[:id])
  end
  
  def number_field(sponsoredpost, method, options = {})
  Tags::NumberField.new(sponsoredpost, method, self, options).render
  end
end
