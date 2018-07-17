
# Users

User.create(name: "Marge Simpson", email: "big@blue.com", password: "springfield", address: "123 Main St., Seattle, WA", user_phone: "206-123-4567", num_of_kids: 3)
User.create(name: "Phil Dunphy", email: "best@dad.com", password: "magicRocks", address: "2020 Plaza, SF, CA", user_phone: "206-123-4567", num_of_kids: 3)
User.create(name: "Mrs. Brady", email: "six@isenough.com", password: "lovelylady", address: "100 Sunset Blvd. Los Angeles, CA", user_phone: "310-123-4567", num_of_kids: 6)
User.create(name: "Monica Jones", email: "monica@monica.com", password: "rubyonrails", address: "100 Presidio", user_phone: "415-555-5555", num_of_kids: 1)

# Sitters

Sitter.create(name: "Kristy", email: "baby@sitter.com", password: "girlsRock", sitter_phone: "310-987-6543", hourly_rate: 15)
Sitter.create(name: "Dora", email: "go@explore.com", password: "boots", sitter_phone: "206-987-6543", hourly_rate: 20)
Sitter.create(name: "Adam", email: "manly@sitter.com", password: "gotoschool", sitter_phone: "415-999-9999", hourly_rate: 22)
Sitter.create(name: "Neo", email: "the@one.com", password: "morpheus", sitter_phone: "415-999-9999", hourly_rate: 25)

# Jobs

Job.create(start_date_time: DateTime.strptime("09/14/2017 20:00", "%m/%d/%Y %H:%M"), duration: 1.5, user_id: 1, sitter_id: 2, open_jobs: false)
Job.create(start_date_time: DateTime.strptime("02/14/2018 17:00", "%m/%d/%Y %H:%M"), duration: 3, user_id: 2, sitter_id: 2, open_jobs: false)
Job.create(start_date_time: DateTime.strptime("03/14/2018 10:00", "%m/%d/%Y %H:%M"), duration: 6, user_id: 3, sitter_id: 1, open_jobs: false)
Job.create(start_date_time: DateTime.strptime("04/04/2018 14:30", "%m/%d/%Y %H:%M"), duration: 12, user_id: 4, sitter_id: 4, open_jobs: false)
Job.create(start_date_time: DateTime.strptime("05/30/2018 07:00", "%m/%d/%Y %H:%M"), duration: 2, user_id: 4, sitter_id: 3, open_jobs: false)
