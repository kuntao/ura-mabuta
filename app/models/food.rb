class Food < ActiveRecord::Base

	def create_response_data
		obj = {
			id: self.id,
			user: User.find_by(id: self.user_id),
			will_eat: self.will_eat,
			amount: self.amount
    }
	end

end
