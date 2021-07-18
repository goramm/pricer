desc 'Fetch all prices'
task fetch_prices: :environment do
  Product.all.each do |product|
    product.pages.each do |page|
      Scraper.save!(page)
    end
  end
end