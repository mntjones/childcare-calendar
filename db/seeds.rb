
# Users

User.create(name: "Marge Simpson", email: "big@blue.com", password: "springfield", num_of_kids: 3)
User.create(name: "Phil Dunphy", email: "best@dad.com", password: "magicRocks", num_of_kids: 3)
User.create(name: "Mrs. Brady", email: "six@isenough.com", password: "lovelylady", num_of_kids: 6)
User.create(name: "Monica Jones", email: "monica@monica.com", password: "rubyonrails", num_of_kids: 1)

# Sitters

Sitter.create(name: "Kristy", email: "baby@sitter.com", password: "girlsRock", hourly_rate: 15)
Sitter.create(name: "Dora", email: "go@explore.com", password: "boots", hourly_rate: 20)
Sitter.create(name: "Adam", email: "manly@sitter.com", password: "gotoschool", hourly_rate: 22)
Sitter.create(name: "Neo", email: "the@one.com", password: "morpheus", hourly_rate: 25)

# Jobs

Job.create(address: "123 Main St., Seattle, WA", user_phone: "206-123-4567", sitter_phone: "206-987-6543", start_date_time: 2018-01-31 [19:00:00], end_date_time: 2018-01-31 [22:00:00], user_id: 1, sitter_id: 2)
Job.create(address: "2020 Plaza, SF, CA", user_phone: "206-123-4567", sitter_phone: "415-987-6543", start_date_time: 2018-02-14 [20:00:00], end_date_time: 2018-01-31 [23:00:00], user_id: 2, sitter_id: 2)
Job.create(address: "100 Sunset Blvd. Los Angeles, CA", user_phone: "310-123-4567", sitter_phone: "310-987-6543", start_date_time: 2018-03-14 [10:00:00], end_date_time: 2018-03-15 [10:00:00], user_id: 3, sitter_id: 1)
Job.create(address: "100 Presidio", user_phone: "415-555-5555", sitter_phone: "415-999-9999", start_date_time: 2018-04-04 [14:30:00], end_date_time: 2018-01-31 [20:30:00], user_id: 4, sitter_id: 4)
Job.create(address: "100 Presidio", user_phone: "415-555-5555", sitter_phone: "415-999-9999", start_date_time: 2018-05-30 [11:00:00], end_date_time: 2018-05-30 [22:00:00], user_id: 4, sitter_id: 3)