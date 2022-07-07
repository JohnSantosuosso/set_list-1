# spec/models/song_spec.rb

require 'rails_helper'

RSpec.describe Song do
  describe 'relationships' do
    it {should belong_to :artist}
  end

  describe 'class methods' do
    xit '.song_count' do
      prince = Artist.create!(name: 'Prince')
      talking_heads = Artist.create!(name: 'Talking Heads')
      rasperry_beret = prince.songs.create!(title: 'Raspberry Beret', length: 234, play_count: 34)
      wild_life = talking_heads.songs.create!(title: 'Wild Wild Life', length: 456, play_count: 45)

      expect(Song.song_count).to eq(2)
    end
  end

  describe 'validations' do
    it {should validate_presence_of :title}
    it {should validate_presence_of :length}
    it {should validate_presence_of :play_count}
  end
end