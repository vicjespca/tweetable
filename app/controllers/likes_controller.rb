class LikesController < ApplicationController
  def destroy
    authorize Like
    tweet_id = params[:id]
    return unless current_user

    like = Like.find_by(tweet_id:, user_id: current_user.id)
    if like.nil?
      Like.create(tweet_id:, user_id: current_user.id)
      redirect_to "/tweet/:id"
    else
      like.destroy
      redirect_to "/tweet/:id"
    end
  end
end
