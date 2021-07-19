class Page < ApplicationRecord
  belongs_to :product
  belongs_to :shop

  before_validation do
    self.shop = Shop.find_by(host: URI.parse(self.url).host)
  end

end
