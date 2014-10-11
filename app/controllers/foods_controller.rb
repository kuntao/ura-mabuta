class FoodsController < ApplicationController
	
	def index
		follows = Follow.where(user_id: current_user.id)

		follow_ids = follows.map { |f| f.follow_id }

		food_list = follow_ids.map { |f| Food.last.create_response_data }

		render json: {data: food_list}
	end

	def create
		params.permit!

		food = Food.create(
			user_id: current_user.id,
			will_eat: params[:will_eat],
			amount: params[:amount]
		)

		render json: {data: food.create_response_data}
	end

end
