user = User.create(first_name: "Lana", last_name: "Chiad", username: "lanana", password: "1234")

haiku = Haiku.create(title: "IKEA", first_line: "If my career fails,", second_line: "I can get a new career,", third_line: "Building furniture.", user_id: 1)