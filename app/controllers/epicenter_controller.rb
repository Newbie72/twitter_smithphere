class EpicenterController < ApplicationController
  def feed
  	@following_tweets = []

  	@tweets = Tweet.all

  	@tweets.each do |tweet|
  		current_user.following.each do |f|
  			if tweet.user_id == f
  				@following_tweets.push(tweet)
  			end	
  		end		
  	end			
  end

  def show_user
  end

  def now_following
  end

  def unfollow
  end
end
