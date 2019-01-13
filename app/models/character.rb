class Character < ActiveRecord::Base

    has_many :battles
    has_many :movies, through: :battles
    has_many :superpowers
    accepts_nested_attributes_for :superpowers
    
    validates :name, presence: true
    validates :callsign, presence: true
end
