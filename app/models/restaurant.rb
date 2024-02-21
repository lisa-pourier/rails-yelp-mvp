class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }
  # validates :reviews, presence: false, if: :restaurant.destroy? ASK if I could have also used an IF statement here

end



# [X] A restaurant must have a name, an address and a category.
# [X] A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
# [X] When a restaurant is destroyed, all of its reviews must be destroyed as well.
