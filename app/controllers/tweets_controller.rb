class TweetsController < ApplicationController
	def index
	    get_followers = Follower.where(["user_id = ?", session['id']])
	    get_followers_id = []
	    get_followers_id.append(session['id'])
	    get_followers.each do |f|
	    	get_followers_id.append(f.follows_user_id)
	    end
	    @tweets = Tweet.where(:user_id => get_followers_id).sort_by(&:created_at).reverse
	end

	def post_tweet
		t = Tweet.new(:user_id => session['id'], :body =>  params[:tweet_body])
		if t.save
			 flash[:notice] = "Tweet successfully Sent"
		else
			 flash[:notice] = "Tweet Length Should not exceed 140 characters."
		end
		redirect_to :controller => 'tweets', :action => 'index'
	end
end
