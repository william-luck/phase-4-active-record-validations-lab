class Post < ApplicationRecord

    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}

    validate :title, :click_bait

    def click_bait

        
        accepted_values = ["Won't Believe", "Secret", "Top", "Guess"]

        if title
            unless accepted_values.any? {|word| title.include?(word)}
            errors.add(:title, "Not click bait enough")
            end
        end

        



        # byebug

    end
end
