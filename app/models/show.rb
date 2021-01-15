class Show < ActiveRecord::Base

    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
   

        self.actors.collect do |i|
            i.first_name + " " + i.last_name
        end

    end
  
end