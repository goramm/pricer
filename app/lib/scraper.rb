require 'nokogiri'
require 'open-uri'

class Scraper
  def initialize(page)
    @page = page
  end

  def product
    html = URI.open(@page.url)
    doc = Nokogiri::HTML(html)

    price = find(doc, @page.shop.price_selector, 0)
    currency = find(doc, @page.shop.currency_selector, '')
    description = find(doc, @page.shop.description_selector, '')
    OpenStruct.new(price: price, currency: currency, description: description)
  end

  def find(doc, selector, default_value)
    if selector.start_with?('meta')
      content = doc.css(selector).attr('content')
      content ? parse_value(content.value, default_value) : default_value
    else
      content = doc.css(selector).text()
      content ? parse_value(content, default_value) : default_value
    end
  end

  def parse_value(value, default_value)
    val = value.strip
    default_value.is_a?(Numeric) ? Monetize.parse(val).to_f : val.gsub(/[\d,.]+/, '').strip
  end

  def self.save!(page)
    if page.url.present?
      scrape = Scraper.new(page).product
      page.price = scrape.price
      page.currency = scrape.currency
      page.description = scrape.description

      page.save
    end
  end
end