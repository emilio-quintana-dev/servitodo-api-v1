class Job < ApplicationRecord
    belongs_to :user
    belongs_to :professional
    has_one :review
end
