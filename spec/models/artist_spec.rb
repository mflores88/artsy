require 'rails_helper'

RSpec.describe Artist, type: :model do
  it 'is valid with name and year' do
    expect(Artist.new(name: 'Genesis', genre: 'progressive/pop')).to be_valid
  end

  it 'is not valid without a name' do
    artist = Artist.new(name: 'Genesis', genre: nil)
    expect(artist).to_not be_valid
  end

  it 'is not valid without a genre' do
    artist = Artist.new(name: nil, genre: 'rock')
    expect(artist).to_not be_valid
  end
end
