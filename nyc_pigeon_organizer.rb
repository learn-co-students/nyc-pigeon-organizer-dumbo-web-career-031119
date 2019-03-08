require 'pry'


def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons = {}
 data.each do |key, value|
   value.each do |attribute, names|
   names.each do |x|
   #binding.pry
   pigeons [x] ||= {}
   pigeons[x][key] ||= []
   pigeons[x][key] << attribute.to_s
    
  end 
end 
end 
pigeons
end