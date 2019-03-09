require "pry"

def nyc_pigeon_organizer(data)
   new_hash = {}

   data.each do |colors_gender, options|
             #colors_gender = :color, :gender, : lives
             #options = {:purple => [Array of Names]}
     options.each do |option, pigeons|
             #options = :purple => ["Theo", "Peter"..]
              #pigeons = [:color] ["Theo", "Peter", "Lucky"]
       pigeons.each do |pigeon|
         new_hash[pigeon] ||= {}
         new_hash[pigeon][colors_gender] ||= []
        new_hash[pigeon][colors_gender] << option.to_s
      end
     end
   end
   new_hash
 end 
