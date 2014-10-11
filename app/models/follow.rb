class Follow < ActiveRecord::Base

	def create_response_data
		obj = {
			id: self.id,
			follow_id: self.follow_id,
			user_id: self.user_id,
			user: User.find_by(id: self.follow_id)
    }
	end

end
