class Professional < ApplicationRecord
    has_many :jobs
    has_many :reviews
    belongs_to :category

    def average_reviews
        if self.reviews.size > 0
            return self.reviews.map { |review| review.rating }.sum / self.reviews.size
        else
            return 1
        end
    end
end
