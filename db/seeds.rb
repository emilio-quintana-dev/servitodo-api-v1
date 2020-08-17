require 'faker'

# Cleanup
Category.destroy_all
Professional.destroy_all
User.destroy_all
Job.destroy_all
Review.destroy_all

# Categories
personalTrainers = Category.create(name: "Personal Trainers")
electricians = Category.create(name: "Electricians")
appDevelopers = Category.create(name: "App Developers")
houseCleaningServices = Category.create(name: "House Cleaners")

# Squad
personalEmail = "emilioquintana90@gmail.com"

5.times { |seedHumans| 
    # Personal Trainers
    Professional.create(name: Faker::Name.name, img_url: Faker::Avatar.image, email: personalEmail, time_in_bussiness: rand(10),
    introduction: "Hi everyone. I'm a personal trainer. My work is evidence-based personal training meaning that I will use my expertise and start with a game plan. Every month we will update your personal metrics
    (weight, body fat and figure out a way to address issues that have not adapted properly to the training. Not every strategy will work for every client and I want to find the best for each person and intervene quickly with a plan-B.",
    category_id: personalTrainers.id, zip_code: 60606 + rand(2), estimated_cost: rand(30), times_hired: rand(10))

    # Electricians
    Professional.create(name: Faker::Name.name, img_url: Faker::Avatar.image, email: personalEmail, time_in_bussiness: rand(10),
    introduction: "We are electricians and we offer general and major construction and remodeling services, specializing in electrical. We offer free estimates. All of our work is done with timely and with effective results. If you are 
    looking to receive quality services at competitive pricing we are the contractors to hire.",
    category_id: electricians.id, zip_code: 60606 + rand(2), estimated_cost: rand(30), times_hired: rand(10))

    # App Developers
    Professional.create(name: Faker::Name.name, img_url: Faker::Avatar.image, email: personalEmail, time_in_bussiness: rand(10),
    introduction: "Hey There. We are app developers. We specialize in helping StartUps and Small businesses. Even though we work with Fortune 500 companies. We care most about small businesses and startups in the united states.",
    category_id: appDevelopers.id, zip_code: 60606 + rand(2), estimated_cost: rand(30), times_hired: rand(10))

    # House Cleaners
    Professional.create(name: Faker::Name.name, img_url: Faker::Avatar.image, email: personalEmail, time_in_bussiness: rand(10),
    introduction: "Our focus is quality, not quantity. We are house cleaners and we provide high quality cleaning service at affordable rates to our residential and commercial clients. We specialized in recurring, one time, move out and deep cleaning services.
    Our highly trained Green Clean Certified maids provide reliable and trustworthy cleaning services while protecting the environment and your health.",
    category_id: houseCleaningServices.id, zip_code: 60606 + rand(2), estimated_cost: rand(30), times_hired: rand(10))
}

# Test User Account/Admin
User.create(name: 'Emilio Quintana', email: 'emilio@dev.com', password: 'emilio', password_confirmation: 'emilio', zip_code: 60608)
