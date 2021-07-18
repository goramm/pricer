class Product < ApplicationRecord
  has_many :pages, -> { order(price: :asc) }
  accepts_nested_attributes_for :pages, reject_if: :all_blank, allow_destroy: true
end
