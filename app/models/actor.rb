class Actor < ActiveRecord::Base
has_many :characters
has_many :shows, through: :characters

def full_name 
  "#{self.first_name} #{self.last_name}" 
end 

def list_roles
  arr_of_char = self.characters.map {|char| char.name }
  arr_of_shows = self.shows.map {|sh| sh.name }
 role = arr_of_char.concat arr_of_shows
 role.join(" - ")
end 
end