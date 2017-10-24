class Artwork < ApplicationRecord
  #This prevents duplicates at the model level.
  validates :title, uniqueness: { scope: :artist_id }

  belongs_to :artist,
  primary_key: :id,
  class_name: :User,
  foreign_key: :artist_id

  has_many :shared_withs,
  class_name: :ArtworkShare,
  primary_key: :id,
  foreign_key: :artwork_id

  has_many :shared_viewers, through: :shared_withs, source: :viewer
end
