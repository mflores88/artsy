# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Generate artists
artists = ["Genesis", "Pearl Jam", "Spock's Beard", "Dream Theater", "Metallica"]
genres = %w(Progressive/Pop Grunge/Rock Progressive/Rock Progressive/Metal Metal/Rock)

artists.each_with_index do |a, i|
  Artist.create(name: a, genre: genres[i])
end

# Generate albums
albums = [
    { title: 'Genesis', year: 1983 },
    { title: 'Yield', year: 1998 },
    { title: 'Feel Euphoria', year: 2003 }
]

artists = ["Genesis", "Pearl Jam", "Spock's Beard"]

albums.each_with_index do |album, i|
  artist = Artist.find_by(name: artists[i])
  Album.create(album.merge(artist: artist))
end
