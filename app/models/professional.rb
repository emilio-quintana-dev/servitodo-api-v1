class Professional < ApplicationRecord
    has_many :jobs
    has_many :reviews
    belongs_to :category
end
