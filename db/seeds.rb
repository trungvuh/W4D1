# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

reid = User.first
trung = User.find(2)
bob = User.create(username: 'Bob')
alice = User.create(username: 'Alice')
charlie = User.create(username: 'Charlie')

art1 = Artwork.first # Mona Lisa
art2 = Artwork.create(title: 'statue of Daivd', image_url: 'david.com', artist_id: 1)
art3 = Artwork.create(title: 'Sistine Chapel', image_url: 'sistine.com', artist_id: 2)
art4 = Artwork.create(title: 'Thinker', image_url: 'thinker.com', artist_id: 2)

share1 = ArtworkShare.create(artwork_id: art1.id, viewer_id: bob.id)
share2 = ArtworkShare.create(artwork_id: art2.id, viewer_id: alice.id)
share3 = ArtworkShare.create(artwork_id: art3.id, viewer_id: bob.id)
