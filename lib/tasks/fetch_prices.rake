desc 'Fetch all prices'
task fetch_prices: :environment do
  Product.all.each do |product|
    puts "Fetch prices for #{product.name}"
    product.pages.each do |page|
      Scraper.save!(page)
    end
  end
end