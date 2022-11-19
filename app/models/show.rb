class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors = self.actors.all
    full_names = []
    actors.each do |actor|
        full_names << "#{actor.first_name} #{actor.last_name}"
    end
    full_names
  end
end