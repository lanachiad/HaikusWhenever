user = User.create(first_name: "Lana", last_name: "Chiad", username: "lanana", password: "1234", image: "https://static.wixstatic.com/media/15c1b6_1e37fbd7e94240158b081cb864d59c9a~mv2.jpg_256")

haiku = Haiku.create(poem: "If my career fails, I can get a new career, Building furniture.", user_id: 1)