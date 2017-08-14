class Album < ApplicationRecord
  belongs_to :artist

  validates :title, :year, :artist, presence: true
end
