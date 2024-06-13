class MovieModel {
  String? name;
  String? image;
  String? description;
  int? age;
  String? rating;
  String? type;
  List<String>? feedBack;

  MovieModel({
    this.name,
    this.image,
    this.description,
    this.age,
    this.type,
    this.rating,
    this.feedBack,
  });
}

List<MovieModel> comedyMovies = [
  MovieModel(
    name: "The Hangover",
    image:
        "https://th.bing.com/th/id/OIP.Rt7dy6EVY4xT6wngC0jFLwHaLH?w=115&h=180&c=7&r=0&o=5&pid=1.7",
    description:
        "Three friends wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing.",
    age: 18,
    rating: "106",
    type: "Comedy",
    feedBack: [
      "Hilarious and outrageous!",
      "A wild and crazy comedy.",
      "Memorable characters and moments."
    ],
  ),
  MovieModel(
    name: "Superbad",
    image:
        "https://th.bing.com/th/id/OIP.e_S_H7Mix3mGA0RugQnfOwHaLH?w=115&h=180&c=7&r=0&o=5&pid=1.7",
    description:
        "Two high school friends spend one last night trying to have a party and score some alcohol.",
    age: 18,
    rating: "106",
    type: "Comedy",
    feedBack: [
      "A teen comedy classic!",
      "Funny and relatable.",
      "Great chemistry between the leads."
    ],
  ),
  MovieModel(
    name: "Anchorman: The Legend of Ron Burgundy",
    image:
        "https://th.bing.com/th/id/OIP.li7fzGDSpyxRTng_LoHotQHaK-?w=115&h=180&c=7&r=0&o=5&pid=1.7",
    description:
        "Ron Burgundy, the top-rated anchorman in San Diego in the 1970s, struggles to deal with a new female co-anchor.",
    age: 13,
    rating: "150",
    type: "Comedy",
    feedBack: [
      "Will Ferrell is hilarious!",
      "A fun satire of news media.",
      "Classic one-liners."
    ],
  ),
  MovieModel(
    name: "Dumb and Dumber",
    type: "Comedy",
    image:
        "https://th.bing.com/th/id/OIP.Izog7oOt-6_aLOvuGhbTiAHaLH?w=126&h=189&c=7&r=0&o=5&pid=1.7",
    description:
        "The cross-country adventures of two good-hearted but incredibly stupid friends.",
    age: 13,
    rating: "150",
    feedBack: [
      "Jim Carrey and Jeff Daniels are comedy gold!",
      "Laugh-out-loud funny.",
      "A silly but lovable movie."
    ],
  ),
  MovieModel(
    name: "Step Brothers",
    type: "Comedy",
    image:
        "https://th.bing.com/th/id/OIP.tj6jsTu0nnL07ZYNbwFDtgHaJ4?w=139&h=185&c=7&r=0&o=5&pid=1.7",
    description:
        "Two aimless middle-aged losers still living at home are forced against their will to become roommates when their parents marry.",
    age: 18,
    rating: "106",
    feedBack: [
      "Ridiculously funny!",
      "Will Ferrell and John C. Reilly have great chemistry.",
      "Endlessly quotable."
    ],
  ),
  MovieModel(
    name: "21 Jump Street",
    type: "Comedy",
    image:
        "https://th.bing.com/th/id/OIP.NlDkWgLRsvE1tHIQkNEfDQHaLH?w=122&h=183&c=7&r=0&o=5&pid=1.7",
    description:
        "A pair of underachieving cops are sent back to a local high school to blend in and bring down a synthetic drug ring.",
    age: 18,
    rating: "106",
    feedBack: [
      "Channing Tatum and Jonah Hill are great together!",
      "Action-packed and funny.",
      "A clever reboot of the TV show."
    ],
  ),
  MovieModel(
    name: "The Grand Budapest Hotel",
    type: "Comedy",
    image:
        "https://th.bing.com/th/id/OIP.eqw9zTSb2p2SKwaElnbQNQHaLH?w=118&h=180&c=7&r=0&o=5&pid=1.7",
    description:
        "A writer encounters the owner of an aging high-class hotel, who tells him of his early years serving as a lobby boy in the hotel's glorious years under an exceptional concierge.",
    age: 15,
    rating: "106",
    feedBack: [
      "Visually stunning and hilarious.",
      "Wes Anderson at his best.",
      "A delightful and quirky comedy."
    ],
  ),
  MovieModel(
    name: "Deadpool",
    type: "Comedy",
    image:
        "https://th.bing.com/th/id/OIP.GZFbzN1YyKwSRJmRlGxqTAHaKy?w=114&h=180&c=7&r=0&o=5&pid=1.7",
    description:
        "A wisecracking mercenary with terminal cancer agrees to an experiment that leaves him with accelerated healing powers and a quest for revenge.",
    age: 18,
    rating: "106",
    feedBack: [
      "Hilarious and action-packed.",
      "Ryan Reynolds is perfect as Deadpool.",
      "A fresh take on the superhero genre."
    ],
  ),
  MovieModel(
    name: "The Big Lebowski",
    type: "Comedy",
    image:
        "https://th.bing.com/th/id/OIP.6HOSH4U_uXLn2b9y2CnTJAHaJI?w=116&h=180&c=7&r=0&o=5&pid=1.7",
    description:
        "Jeff \"The Dude\" Lebowski, mistaken for a millionaire with the same name, seeks restitution for his ruined rug and enlists his bowling buddies to help get it.",
    age: 18,
    rating: "106",
    feedBack: [
      "A cult classic!",
      "Brilliantly written and acted.",
      "A must-watch for comedy fans."
    ],
  ),
];

List<MovieModel> actionMovies = [
  MovieModel(
    name: "Mad Max: Fury Road",
    image:
        "https://th.bing.com/th/id/OIF.LinSr4ZZflGV5mWVQbLQOA?w=186&h=249&c=7&r=0&o=5&pid=1.7",
    description:
        "In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland with the aid of a group of female prisoners, a psychotic worshipper, and a drifter named Max.",
    age: 18,
    rating: "50",
    type: "Action",
    feedBack: [
      "Visually stunning and intense!",
      "A thrilling ride from start to finish.",
      "One of the best action films in recent years."
    ],
  ),
  MovieModel(
    name: "John Wick",
    image:
        "https://th.bing.com/th/id/OIP.aE-HyFmf7B1tyymQvcpINQHaL2?w=115&h=180&c=7&r=0&o=5&pid=1.7",
    description:
        "An ex-hitman comes out of retirement to track down the gangsters that killed his dog and took everything from him.",
    age: 18,
    rating: "50",
    type: "Action",
    feedBack: [
      "Keanu Reeves at his best!",
      "Stylish and action-packed.",
      "A must-watch for action fans."
    ],
  ),
  MovieModel(
    name: "Gladiator",
    image:
        "https://th.bing.com/th/id/OIP.QlKQDPhRJPpS4p8nHe-18AHaLH?w=125&h=188&c=7&r=0&o=5&pid=1.7",
    description:
        "A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.",
    age: 15,
    rating: "50",
    type: "Action",
    feedBack: [
      "Epic and powerful.",
      "Russell Crowe delivers a fantastic performance.",
      "A classic in the action genre."
    ],
  ),
  MovieModel(
    name: "The Dark Knight",
    image:
        "https://th.bing.com/th/id/OIP.NN9rKH-vZbFgtH4FuoW7OwHaLH?w=123&h=184&c=7&r=0&o=5&pid=1.7",
    description:
        "When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
    age: 13,
    rating: "150",
    type: "Action",
    feedBack: [
      "Heath Ledger's Joker is unforgettable!",
      "A masterpiece of superhero cinema.",
      "Thrilling and thought-provoking."
    ],
  ),
  MovieModel(
    name: "Die Hard",
    image:
        "https://th.bing.com/th/id/OIP.1ZGjvPcV6qvkyA8LGsa7BQHaLF?w=186&h=278&c=7&r=0&o=5&pid=1.7",
    description:
        "An NYPD officer tries to save his wife and several others taken hostage by German terrorists during a Christmas party at the Nakatomi Plaza in Los Angeles.",
    age: 18,
    rating: "50",
    type: "Action",
    feedBack: [
      "A classic action film!",
      "Bruce Willis is iconic.",
      "Non-stop action and suspense."
    ],
  ),
  MovieModel(
    name: "The Matrix",
    image:
        "https://th.bing.com/th/id/OIP.mCr3x90hubrByxx2xp21EwHaLH?w=186&h=279&c=7&r=0&o=5&pid=1.7",
    description:
        "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.",
    age: 15,
    rating: "50",
    type: "Action",
    feedBack: [
      "Groundbreaking visual effects.",
      "A mind-bending action thriller.",
      "A must-see  action film."
    ],
  ),
  MovieModel(
    name: "Avengers: Endgame",
    image:
        "https://th.bing.com/th/id/OIP.WVWesbet0E70HmkG7weOjQHaKC?w=186&h=253&c=7&r=0&o=5&pid=1.7",
    description:
        "After the devastating events of Avengers: Infinity War, the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.",
    age: 13,
    rating: "605",
    type: "Action",
    feedBack: [
      "Epic conclusion to the Avengers saga.",
      "Packed with emotional moments.",
      "An action-packed superhero spectacle."
    ],
  ),
  MovieModel(
    name: "Inception",
    image:
        "https://th.bing.com/th/id/OIP.fYLXgLBnnbp3N8JCRuUIGAHaLH?w=186&h=279&c=7&r=0&o=5&pid=1.7",
    description:
        "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.",
    age: 13,
    rating: "404",
    type: "Action",
    feedBack: [
      "Mind-blowing and thrilling.",
      "Christopher Nolan's masterpiece.",
      "A visually stunning action film."
    ],
  ),
  MovieModel(
    name: "Terminator 2: Judgment Day",
    image:
        "https://th.bing.com/th/id/OIP.yr369AUtJRkEuZoxB4MQuAHaLH?w=186&h=279&c=7&r=0&o=5&pid=1.7",
    description:
        "A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.",
    age: 15,
    rating: "50",
    type: "Action",
    feedBack: [
      "An action movie classic.",
      "Arnold Schwarzenegger at his best.",
      "Amazing special effects and action scenes."
    ],
  ),
  MovieModel(
    name: "Raiders of the Lost Ark",
    image:
        "https://th.bing.com/th/id/OIP.mAakEntKHcJPdmIukVEIywHaLQ?w=186&h=284&c=7&r=0&o=5&pid=1.7",
    description:
        "In 1936, archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before Adolf Hitler's Nazis can obtain its awesome powers.",
    age: 13,
    rating: "65",
    type: "Action",
    feedBack: [
      "An adventure-filled action film.",
      "Harrison Ford is iconic as Indiana Jones.",
      "Timeless and thrilling."
    ],
  ),
];

List<MovieModel> fantasyMovies = [
  MovieModel(
    name: "The Lord of the Rings: The Fellowship of the Ring",
    image:
        "https://th.bing.com/th/id/OIP.Fe-zd7pd7lKnwdBauA28UQHaLH?w=186&h=279&c=7&r=0&o=5&pid=1.7",
    description:
        "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.",
    age: 13,
    type: "Fantasy",
    rating: "150",
    feedBack: [
      "A groundbreaking epic fantasy.",
      "Visually stunning with a captivating story.",
      "A must-see for fantasy lovers."
    ],
  ),
  MovieModel(
    name: "Harry Potter and the Sorcerer's Stone",
    image:
        "https://th.bing.com/th/id/OIP.jNgYY1ri0tyRFvNAhtEKuAAAAA?w=117&h=180&c=7&r=0&o=5&pid=1.7",
    description:
        "An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world.",
    age: 10,
    rating: "332",
    type: "Fantasy",
    feedBack: [
      "A magical beginning to a beloved series.",
      "Fantastic world-building and characters.",
      "Captures the wonder of the books perfectly."
    ],
  ),
  MovieModel(
    name: "The Chronicles of Narnia: The Lion, the Witch and the Wardrobe",
    image:
        "https://th.bing.com/th/id/OIP.atlp4tZEQ4-Ec394qDSsbgHaK9?w=115&h=180&c=7&r=0&o=5&pid=1.7",
    description:
        "Four kids travel through a wardrobe to the land of Narnia and learn of their destiny to free it with the guidance of a mystical lion.",
    age: 8,
    rating: "406",
    type: "Fantasy",
    feedBack: [
      "Enchanting and magical.",
      "A faithful adaptation of the classic book.",
      "Great for both children and adults."
    ],
  ),
  MovieModel(
    name: "Pan's Labyrinth",
    image:
        "https://th.bing.com/th/id/OIP.O0TpVUuhjaIiF_aPKqLzIAHaLH?w=115&h=180&c=7&r=0&o=5&pid=1.7",
    description:
        "In the Falangist Spain of 1944, the bookish young stepdaughter of a sadistic army officer escapes into an eerie but captivating fantasy world.",
    age: 18,
    type: "Fantasy",
    rating: "106",
    feedBack: [
      "Dark and mesmerizing.",
      "A visually stunning fairy tale for adults.",
      "Guillermo del Toro's masterpiece."
    ],
  ),
  MovieModel(
    name: "The Princess Bride",
    image:
        "https://th.bing.com/th/id/OIP.vku22BC1fMNuyo9NyqZvDgHaLH?w=119&h=180&c=7&r=0&o=5&pid=1.7",
    description:
        "While home sick in bed, a young boy's grandfather reads him the story of a farmboy-turned-pirate who encounters numerous obstacles, enemies, and allies in his quest to be reunited with his true love.",
    age: 10,
    rating: "406",
    type: "Fantasy",
    feedBack: [
      "A charming and funny adventure.",
      "Timeless and endlessly quotable.",
      "A delightful fantasy romance."
    ],
  ),
  MovieModel(
    name: "Avatar",
    image:
        "https://th.bing.com/th/id/OIP.lsyx5H7-NVMaVV81D1pYdQHaLH?w=124&h=186&c=7&r=0&o=5&pid=1.7",
    description:
        "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
    age: 13,
    rating: "150",
    type: "Fantasy",
    feedBack: [
      "Visually groundbreaking.",
      "An immersive fantasy world.",
      "A thrilling and emotional journey."
    ],
  ),
  MovieModel(
    name: "Stardust",
    image:
        "https://th.bing.com/th/id/OIP._8bi82sPcNH4-zh0gaQqwQHaNL?w=115&h=180&c=7&r=0&o=5&pid=1.7",
    description:
        "In a countryside town bordering on a magical land, a young man makes a promise to his beloved that he'll retrieve a fallen star by venturing into the magical realm.",
    age: 13,
    type: "Fantasy",
    rating: "150",
    feedBack: [
      "Magical and whimsical.",
      "A wonderful fairy tale adventure.",
      "Charming and beautifully crafted."
    ],
  ),
  MovieModel(
    name: "The Shape of Water",
    image:
        "https://th.bing.com/th/id/OIP.PRxzg84MpR7advy8rSFwKAHaLH?w=117&h=180&c=7&r=0&o=5&pid=1.7",
    description:
        "At a top secret research facility in the 1960s, a lonely janitor forms a unique relationship with an amphibious creature that is being held in captivity.",
    age: 18,
    type: "Fantasy",
    rating: "106",
    feedBack: [
      "Unique and enchanting.",
      "A beautifully strange love story.",
      "Guillermo del Toro's magical realism shines."
    ],
  ),
  MovieModel(
    name: "Spirited Away",
    type: "Fantasy",
    image:
        "https://th.bing.com/th/id/OIP.x85B0PhGEKTDZEVlkc_EugHaFj?w=249&h=187&c=7&r=0&o=5&pid=1.7",
    description:
        "During her family's move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.",
    age: 10,
    rating: "406",
    feedBack: [
      "A visually stunning and imaginative film.",
      "Hayao Miyazaki's masterpiece.",
      "Captivating and magical from start to finish."
    ],
  ),
];

List<MovieModel> popularMovies = [
  MovieModel(
      name: "Avatar: The Way of Water",
      image:
          "https://th.bing.com/th/id/OIP.vKl2WL7kRrGK_N_5zGnMkgHaLG?w=123&h=184&c=7&r=0&o=5&pid=1.7",
      description: "Jake Sully lives with his newfound family formed on the planet of Pandora.",
      age: 13,
      type: "Action, Adventure, Fantasy",
      rating: "106",
      feedBack: ["Visually stunning", "Epic storytelling", "Great sequel"]),
  MovieModel(
      name: "Spider-Man: No Way Home",
      image:
          "https://th.bing.com/th/id/OIP.-LMoeJrawXlk-fOnwv9OngHaKz?w=186&h=272&c=7&r=0&o=5&pid=1.7",
      description: "Peter Parker's life and reputation are turned upside down when Mysterio reveals his identity to the world.",
      age: 12,
      type: "Action, Adventure",
      rating: "106",
      feedBack: ["Amazing visuals", "Nostalgic", "Emotional"]),
  MovieModel(
      name: "Dune",
      image:
          "https://th.bing.com/th/id/OIP.yFIyWoiKZLfWbKsPhEUbYwHaJQ?w=186&h=233&c=7&r=0&o=5&pid=1.7",
      description: "Paul Atreides leads nomadic tribes in a battle to control the desert planet Arrakis.",
      age: 14,
      type: "Adventure, Drama,",
      rating: "106",
      feedBack: ["Epic scope", "Great acting", "Fantastic visuals"]),
  MovieModel(
      name: "The Batman",
      image:
          "https://th.bing.com/th/id/OIP.Ixx7-LdFLFBQtGiPspXtlgHaLH?w=115&h=180&c=7&r=0&o=5&pid=1.7",
      description: "In his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family.",
      age: 15,
      type: "Action, Drama",
      rating: "106",
      feedBack: [
        "Dark and gritty",
        "Compelling story",
        "Great performance by Pattinson"
      ]),
  MovieModel(
      name: "Doctor Strange in the Multiverse of Madness",
      image:
          "https://th.bing.com/th/id/OIP.PxO2NJXEO2TqB-3G4XCV8AHaK-?w=186&h=276&c=7&r=0&o=5&pid=1.7",
      description: "Dr. Stephen Strange casts a forbidden spell that opens the door to the multiverse.",
      age: 13,
      type: "Action, Adventure, Fantasy",
      rating: "106",
      feedBack: ["Mind-bending", "Exciting", "Visually stunning"]),
  MovieModel(
      name: "Black Panther: Wakanda Forever",
      image:
          "https://th.bing.com/th/id/OIP.udstHPF8mPl8hm3gOsKkwQHaLQ?w=127&h=194&c=7&r=0&o=5&pid=1.7",
      description: "The people of Wakanda fight to protect their home from intervening world powers as they mourn the loss of King T’Challa.",
      age: 12,
      type: "Action, Adventure, Drama",
      rating: "106",
      feedBack: ["Emotional", "Cultural impact", "Great tribute"]),
  MovieModel(
      name: "Top Gun: Maverick",
      image:
          "https://th.bing.com/th/id/OIP.deO1VkuzXDkSK22UBeofbgHaHa?w=168&h=180&c=7&r=0&o=5&pid=1.7",
      description: "After more than thirty years of service as one of the Navy's top aviators, Pete Mitchell is where he belongs, pushing the envelope as a courageous test pilot.",
      age: 14,
      type: "Action, Drama",
      rating: "236",
      feedBack: ["Thrilling", "Nostalgic", "Great action"]),
  MovieModel(
      name: "Thor: Love and Thunder",
      image:
          "https://th.bing.com/th/id/OIP.-7TY6o_wokpC4SJNaDJeoAHaK-?w=119&h=180&c=7&r=0&o=5&pid=1.7",
      description: "Thor enlists the help of Valkyrie, Korg and ex-girlfriend Jane Foster to fight Gorr the God Butcher.",
      age: 13,
      type: "Action, Adventure",
      rating: "106",
      feedBack: ["Fun", "Action-packed", "Great humor"]),
  MovieModel(
      name: "Jurassic World Dominion",
      image:
          "https://th.bing.com/th/id/OIP.5mDC11Pody3JzEhEzskVoAAAAA?w=186&h=275&c=7&r=0&o=5&pid=1.7",
      description: "Four years after Isla Nublar has been destroyed, dinosaurs now live—and hunt—alongside humans all over the world.",
      age: 13,
      type: "Action, Adventure",
      rating: "106",
      feedBack: ["Exciting", "Dinosaurs!", "Nostalgic"]),
  MovieModel(
      name: "Minions: The Rise of Gru",
      image:
          "https://th.bing.com/th/id/OIP.8Xtlak8uLTIxzzo-rtTGZgAAAA?w=115&h=180&c=7&r=0&o=5&pid=1.7",
      description: "The untold story of one twelve-year-old's dream to become the world's greatest supervillain.",
      age: 6,
      type: "Comedy, Family",
      rating: "PG",
      feedBack: ["Hilarious", "Family-friendly", "Cute"]),
];
