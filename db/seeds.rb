Review.destroy_all
Bookmark.destroy_all
List.destroy_all
Movie.destroy_all
User.destroy_all

romance_movie = Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
drama_movie = Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
superhero_movie = Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)

json_file = JSON.parse(URI.open("https://tmdb.lewagon.com/movie/top_rated").read)

json_file["results"].each do |movie|
  Movie.create(title: movie["title"], overview: movie["overview"], poster_url: "https://image.tmdb.org/t/p/w500#{movie['poster_path']}", rating: movie["vote_average"])
end

user1 = User.create(email: 'alice@alice.com', password: 'asdasd', username: 'alice')
user2 = User.create(email: 'bob@bob.com', password: 'asdasd', username: 'bob')

timeless = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678525760/timeless_films_d68czy.jpg")
timeless_list = List.new(name: 'Timeless', user: user1)
timeless_list.photo.attach(io: timeless, filename: "timeless_films_d68czy.jpg", content_type: "image/jpg")
timeless_list.save

romance = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678525760/romance_films_au4wra.jpg")
romance_list = List.new(name: 'Romance', user: user1)
romance_list.photo.attach(io: romance, filename: "romance_films_au4wra.jpg", content_type: "image/jpg")
romance_list.save

drama = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678525760/drama_films_wtfcof.jpg")
drama_list = List.new(name: 'Drama', user: user1)
drama_list.photo.attach(io: drama, filename: "drama_films_wtfcof.jpg", content_type: "image/jpg")
drama_list.save

superhero = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678525761/superhero_films_flkbwk.jpg")
superhero_list = List.new(name: 'Superhero', user: user2)
superhero_list.photo.attach(io: superhero, filename: "superhero_films_flkbwk.jpg", content_type: "image/jpg")
superhero_list.save

classic = URI.open("https://res.cloudinary.com/dsx50recn/image/upload/v1678525760/classic_films_clhlpj.jpg")
classic_list = List.new(name: 'Classic', user: user2)
classic_list.photo.attach(io: classic, filename: "classic_films_clhlpj.jpg", content_type: "image/jpg")
classic_list.save

Bookmark.create(comment: 'One of the best movie ever made', movie: Movie.all[3], list: timeless_list)
Bookmark.create(comment: 'Truly timeless classic', movie: Movie.all[4], list: timeless_list)
Bookmark.create(comment: 'Breathtaking...', movie: Movie.all[5], list: timeless_list)
Bookmark.create(comment: "I'm truly amazed!", movie: Movie.all[6], list: timeless_list)

Bookmark.create(comment: 'Rose and Jack, breathtaking...', movie: Movie.first, list: romance_list)
Bookmark.create(comment: 'Very entertaining', movie: Movie.all[1], list: drama_list)
Bookmark.create(comment: 'My favourite superhero movie!', movie: Movie.all[2], list: superhero_list)

Review.create(content: 'Wonderfully curated', rating: 5, list: timeless_list)
Review.create(content: 'Gone with the Wind should be in here!', rating: 3, list: timeless_list)
