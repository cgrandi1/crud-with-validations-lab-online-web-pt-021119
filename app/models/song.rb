class Song < ApplicationRecord

    validates :title, presence: true, uniqueness: { scope: :release_year}
    validates :release_year, presence: true, if: :released, 
                numericality: { only_integer: true, less_than_or_equal_to: Time.now.year }
    validates :released, inclusion: {in: [true, false]}
    
end
