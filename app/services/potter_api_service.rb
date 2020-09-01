class PotterAPIService
  def return_house(name)
    id = id_of_house(name)
    response = conn.get("houses/#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def id_of_house(name)
    response = conn.get('houses')
    results = JSON.parse(response.body)
    match = results.find do |result|
      result["name"] = name
    end
    match["_id"]
  end

  def return_characters_of_house(house)
    response = conn.get('characters')
    results = JSON.parse(response.body, symbolize_names: true)
    results.find_all do |result|
      result[:house] = house
    end
  end

  private

  def conn
    Faraday.new(url: 'https://www.potterapi.com/v1/') do |f|
      f.params['key'] = ENV['POTTER_API_KEY']
    end
  end
end
