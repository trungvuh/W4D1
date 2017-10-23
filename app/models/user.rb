class User < ApplicationRecord
  validates :name, :email, presence: true
  # def find(id)
  #   begin
  #     user = User.find(id)
  #   rescue RecordNotFound
  #     "User not found"
  #   end
  #   user
  # end
end
