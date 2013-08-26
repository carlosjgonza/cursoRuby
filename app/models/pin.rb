class Pin < ActiveRecord::Base

	validates :description, presence: true

	belongs_to :user
	attr_accessible :user_id, :description
end
