# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string           not null
#

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :artworks, foreign_key: :artist_id

  has_many :shared_artwork_ids,
  class_name: :ArtworkShare,
  foreign_key: :viewer_id

  has_many :shared_artworks, through: :shared_artwork_ids, source: :artwork
  # def find(id)
  #   begin
  #     user = User.find(id)
  #   rescue RecordNotFound
  #     "User not found"
  #   end
  #   user
  # end
end
