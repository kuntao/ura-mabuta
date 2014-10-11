class User < ActiveRecord::Base

	def create_response_data
		obj = {
			id: self.id,
			uuid: self.uuid,
			name: self.name
    }
	end

end
