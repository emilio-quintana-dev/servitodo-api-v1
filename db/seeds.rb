# Cleanup
Category.destroy_all
Professional.destroy_all
User.destroy_all
Job.destroy_all
Review.destroy_all

# Category is created
Category.create(name: "House Cleaning")

# Professional signs up!
Professional.create(first_name: 'Romulo', last_name: 'Torres', introduction: "I'm a handyman with 10 years of experience.", category_id: Category.last.id, zip_code: '60608')

# First user creates an account!
User.create(first_name: 'Emilio', last_name: 'Quintana', email: 'emilio@dev.com', password: 'emilio', password_confirmation: 'emilio', zip_code: '60608')

# User hires professional
# Maybe get rid of category ?
Job.create(title: "Window Fixing!", category_id: Category.last.id, user_id: User.last.id, professional_id: Professional.last.id)

# Job went fine! User decides to leave a review
Review.create(rating: 5, content: "Great work!", job_id: Job.last.id, user_id: User.last.id, professional_id: Professional.last.id)