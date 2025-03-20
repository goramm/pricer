module PagesHelper

  def format_page_price(page)
    "#{sprintf('%.2f', page.price)} #{page.currency}" if page && page.price
  end
end
