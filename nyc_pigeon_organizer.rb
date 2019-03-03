require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data[:gender].each do |x,y|
    y.each do |z|
      pigeon_list[z] = {:gender => [x.to_s]}
      data.each do |k,v|
        v.each do |k2, v2|
          if !pigeon_list[z][k].is_a?(Array) && v2.include?(z)
            pigeon_list[z][k] = [k2.to_s]
          elsif k == :color && v2.include?(z)
            pigeon_list[z][k] << k2.to_s
          end
        end
      end
    end
  end
  pigeon_list
end

#x is male or female; y is array of pigeons of gender x
#z is pigeon name
#k is attribute, v is hash of description w/ array of pigeons
#k2 is description, v2 is array of pigeons
