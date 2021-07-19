class Shop < ApplicationRecord
  has_many :pages, dependent: :destroy
end
