class PotterAPISearchFacade
  def initialize
    @potter_service = PotterAPIService.new
  end

  def house_members(house)
    results = @potter_service.return_characters_of_house(house)
    @members = results.map do |member_info|
      Member.new(member_info)
    end
  end
end
