# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
reid = User.create(username: 'Reid')
trung = User.create(username: 'Trung')
bob = User.create(username: 'Bob')
alice = User.create(username: 'Alice')
charlie = User.create(username: 'Charlie')

Artwork.destroy_all
art1 = Artwork.create(title: 'Mona Lisa', image_url: 'david.com', artist_id: reid.id)
art2 = Artwork.create(title: 'statue of Daivd', image_url: 'david.com', artist_id: reid.id)
art3 = Artwork.create(title: 'Sistine Chapel', image_url: 'sistine.com', artist_id: trung.id)
art4 = Artwork.create(title: 'Thinker', image_url: 'thinker.com', artist_id: trung.id)

ArtworkShare.destroy_all
share1 = ArtworkShare.create(artwork_id: art1.id, viewer_id: bob.id)
share2 = ArtworkShare.create(artwork_id: art2.id, viewer_id: alice.id)
share3 = ArtworkShare.create(artwork_id: art3.id, viewer_id: bob.id)
