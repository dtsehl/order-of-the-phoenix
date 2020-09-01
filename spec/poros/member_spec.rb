require 'rails_helper'

RSpec.describe Member do
  it "exists" do
    info = {
      id: '123902183',
      name: 'A name',
      role: 'A role',
      house: 'A house',
      patronus: 'A patronus'
    }

    member = Member.new(info)

    expect(member.class).to eq(Member)
    expect(member.id).to eq(info[:id])
    expect(member.name).to eq(info[:name])
    expect(member.role).to eq(info[:role])
    expect(member.house).to eq(info[:house])
    expect(member.patronus).to eq(info[:patronus])
  end
end
