class UsersController < ApplicationController
	def index
		users = User.all

		user_list = users.map { |u| u.create_response_data }

		render json: {data: user_list}
	end

	def create
		params.permit!

		user = User.find_by(uuid: params[:uuid])

		if !user
			user = User.create(
				name: params[:name],
				uuid: params[:uuid]
			)
		end

		render json: {data: user.create_response_data}
	end

end
