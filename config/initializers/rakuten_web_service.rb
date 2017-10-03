RakutenWebService. configuration do |c|
  c.application_id = ENV['RAKUTEN_APPLICATION_ID']
    items = RakutenWebService::Ichiba::Item.search(keyword: 'Ruby')
    items.first(10).each do |item|
      puts "#{item['itemName']},#{item.price}yen"
  end
end