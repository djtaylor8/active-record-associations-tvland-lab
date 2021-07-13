class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :characters
  belongs_to :network  

  def actors_list
    actors = []
    self.actors.map do |a|
        actors << "#{a.first_name} #{a.last_name}"
    end
    actors 
  end


end