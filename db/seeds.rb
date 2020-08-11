require 'faker'

# Cleanup
Category.destroy_all
Professional.destroy_all
User.destroy_all
Job.destroy_all
Review.destroy_all

# Home Craft Category
homecraft = Category.create(name: "Homecraft")

# Home Craft Workers
Professional.create(first_name: 'Brian', last_name: 'Morris',email: 'emilioquintana90@gmail.com', introduction: "Hello, I’m Brian Morris. Thank you for considering me for your project. Since Servitodo charges vendors for leads, we pay to reply to your listings, so you’re more likely to get a reply if you include lots of details about your job, particularly:
– If you have a light fixture to install, handyman, I don't install recessed lighting, and the maximum ceiling height I can reach is ten feet. Also, I cannot install new electrical boxes (adding a light fixture where there isn't wiring for one already).
- I offer wire concealment for TV mounting.
Inquire for rates.
– Please don't be offended if you receive an auto-reply to decline your job.

Thank you!", category_id: homecraft.id, zip_code: 60608, estimated_cost: 15)

Professional.create(first_name: 'Jose', last_name: 'Handy',email: 'emilioquintana90@gmail.com', introduction: "We get the job done, we love to see our customers happy, and we meet our customers expectations. We make our customers happy with our great affordable prices, handyman.", category_id: homecraft.id, zip_code: 60607, estimated_cost: 12)

Professional.create(first_name: 'Tom', last_name: 'Vitalone',email: 'emilioquintana90@gmail.com', introduction: "I'm experienced and trustworthy
I show up on time I get the work done and I'm customer friendly
I guarantee all my work and your satisfaction of the finished job", category_id: homecraft.id, zip_code: 60609, estimated_cost: 10)

# Fitness Classes and Training Category

fitness = Category.create(name: "Fitness Classes And Training")

Professional.create(first_name: 'Alex', last_name: 'Cook Health',email: 'emilioquintana90@gmail.com', introduction: "I am happy you have found this page and thank you for taking the time to look over all the information here! Before you leave here be sure to check out testimonials as well as before and after pictures of clients I have worked with, I hope you find them inspiring. My name is Alex Cook and for the last 10 years I have helped hundreds of people make meaningful change in their life through mindset practice as well as diet and exercise. My coaching is not geared toward the weekend warrior looking to drop a few lbs but rather the person who is willing for true change and transformation in their life, health and fitness. In working together you can expect to:

-Have a better understanding of who you are and how to make real change in your life!
- Clarity on how to navigate through whatever obstacles life presents you.
-Develop a way of eating that is sustainable for you and your goals, the last diet you will ever need!
-How to eat to reach your goals, personal preference and unique physiology!
-Understand the truth to the biggest myth in the wellness industry that calories in vs calories out are all that matter.
-Learn how to utilize the 4 different eating habits all people have and don't know it.
-Exercise in a way that will yield you the results you want without spending 60-90 minutes in the gym everyday.
- Accountability to help you towards your success and support in achieving your goals long term!", category_id: fitness.id, zip_code: 60609, estimated_cost: 20)

# First user creates an account!
User.create(first_name: 'Emilio', last_name: 'Quintana', email: 'emilio@dev.com', password: 'emilio', password_confirmation: 'emilio', zip_code: 60608)
