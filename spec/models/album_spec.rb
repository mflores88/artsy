require 'rails_helper'

RSpec.describe Album, type: :model do
  before do
    @artist = Artist.new(name: 'Donky Ponky', genre: 'grunge')
  end

  it 'should be valid with title, year and an artist' do
    album = Album.new(title: 'The Crazy Road', year: 1988, artist: @artist)
    expect(album).to be_valid
  end

  it 'should be invalid without a title' do
    album = Album.new(title: nil, year: 1988, artist: @artist)
    expect(album).to_not be_valid
  end
  it 'should be invalid without a year' do
    album = Album.new(title: 'The Crazy Road', year: nil, artist: @artist)
    expect(album).to_not be_valid
  end

  it 'should be invalid without an artist' do
    album = Album.new(title: 'The Crazy Road', year: 1988, artist: nil)
    expect(album).to_not be_valid
  end
end
