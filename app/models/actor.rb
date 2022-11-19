require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    "#{Character.first.name} - #{Character.first.show.name}"
    # characters = self.characters.all
    # characters.each do |character| 
    #     character.name
    # end
  end
end