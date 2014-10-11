class FollowsController < ApplicationController

	def index
		follows = Follow.where(user_id: current_user.id)

		follow_list = follows.map { |f| f.create_response_data }

		render json: {data: follow_list}
	end

	def create
		params.permit!

		follow = Follow.find_by(:user_id => current_user,
			                      :follow_id => params[:follow_id])

		if !follow && current_user.id != params[:follow_id]
			follow = Follow.create(
				follow_id: params[:follow_id],
				user_id: current_user.id
			)
		end

		render json: {data: follow.create_response_data}
	end

end
