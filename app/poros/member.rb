class Member
  attr_reader :id, :name, :role, :house, :patronus

  def initialize(member_info)
    @id = member_info[:id]
    @name = member_info[:name]
    @role = member_info[:role]
    @house = member_info[:house]
    @patronus = member_info[:patronus]
  end
end
