class Room < ActiveRecord::Base
  belongs_to :user
  
  validate :home_type, presence: true
  validate :room_type, presence: true
  validate :accommodate, presence: true
  validate :bed_room, presence: true
  validate :bath_room, presence: true
  validate :listing_name, presence:true, length: {maximum: 75}
  validate :summary, presence: true, length: {maximum: 600}
  validate :adress, presence: true
  validate :price, presence: true, numericality:{only_integer: true, greater_than: 5}
  
  
end
