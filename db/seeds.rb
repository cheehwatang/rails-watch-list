superhero_movie = Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
romance_movie = Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

superhero_list = List.create(name: 'Superhero', image_url: "https://gentwenty.com/wp-content/uploads/2013/07/Superheroes.jpg")
romance_list = List.create(name: 'Romance', image_url: "https://media.istockphoto.com/id/1441027051/photo/couple-holding-hands-at-valentines-table-on-date-or-romantic-anniversary-celebration-together.jpg?b=1&s=170667a&w=0&k=20&c=fWW_CAsM1oKi6QVsaur0kfdCVvcyocZy8GnpCPkSKbU=")
List.create(name: 'Comedy', image_url: "https://static.vecteezy.com/system/resources/previews/001/933/195/original/comedy-show-neon-signs-style-text-free-vector.jpg")
List.create(name: 'Adventure', image_url: "https://www.visitsaudi.com/content/dam/saudi-tourism/media/activities-and-attractions-categories/Adventure_Activities_Hero_Banner.jpg")
List.create(name: 'Horror', image_url: "https://cdn.theatlantic.com/thumbor/TLZcrk9rQ0X12gtrivdlG-FmvYo=/0x0:2500x1406/960x540/media/img/mt/2022/01/scr14979r_2/original.jpg")

Bookmark.create(comment: 'My favourite superhero movie!', movie: superhero_movie, list: superhero_list)
Bookmark.create(comment: 'Rose and Jack, breathtaking...', movie: romance_movie, list: romance_list)

Review.create(content: 'My favourite superhero list', rating: 5, list: superhero_list)
Review.create(content: 'It was okay...', rating: 3, list: superhero_list)
