# Players have a deck (a deck is an array of cards)
# cards have stats
require 'securerandom'

class Player
  attr_accessor :name, :email, :password, :deck
  def initialize(name, email, password, deck=[])
    @name = name
    @email = email
    @password = password
    @deck = deck
  end
end

class Card
  attr_accessor :name, :top, :left, :bottom, :right, :element, :img
  def initialize(name, top, left, bottom, right, element=nil, img=nil)
    @name = name
    @top = top
    @left = left
    @bottom = bottom
    @right = right
    @element = element
    @img = img
    @card_type = SecureRandom.uuid
  end
end

