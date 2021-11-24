class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: CATEGORIES

  # after_destroy :destroy_reviews

  # private

  # def destroy_reviews
  #   self.reviews.destroy_all
  # end
end
