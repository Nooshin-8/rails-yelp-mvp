class Restaurant < ApplicationRecord

  Category_list = ["chinese", "italian", "japanese", "french", "belgian"]

  # associations
  has_many :reviews, dependent: :destroy

  # A restaurant must have at least a name and an address.
  validates :name, presence: true
  validates :address, presence: true

  # A restaurant’s category must belong to this fixed list:
  # ["chinese", "italian", "japanese", "french", "belgian"].
  validates :category, inclusion: { in: Category_list }

end

  # The inclusion helper has an option
  # :in that receives the set of values that will be accepted.
