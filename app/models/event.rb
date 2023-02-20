class Event < ApplicationRecord
    has_many :users
    has_many :users, through: :attendances


    validates :start_date, comparison {greater_than: Time.current}
    validates :duration, numericality { only_integer: true }
    validates :title, presence: true, length: { minimum: 5, maximum: 140 } 
    validates :description, presence: true, length: { minimum: 20, maximum: 1000 },  
    validates :price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 1000, message: 'obligatoirement entre 1 & 1000' }
    validates :location, presence: true 
end
