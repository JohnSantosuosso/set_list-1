class Song < ApplicationRecord
  belongs_to :artist

  validates_presence_of :title, :length, :play_count
end
