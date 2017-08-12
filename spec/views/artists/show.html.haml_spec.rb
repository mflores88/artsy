require 'rails_helper'

RSpec.describe "artists/show", type: :view do
  before(:each) do
    @artist = assign(:artist, Artist.create!(
      :name => "Name",
      :genre => "Genre"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Genre/)
  end
end
