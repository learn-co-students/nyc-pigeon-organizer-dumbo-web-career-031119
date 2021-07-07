require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  pigeon_data = data

  pigeon_data.each do |attribute_keys, color_name_hash|
    #pigeon_list[] = {attribute_keys => []}
    color_name_hash.each do |specifics, name_array|
      name_array.each do |pigeon_name|
        if pigeon_list.key?(pigeon_name)
          if pigeon_list[pigeon_name].has_key?(attribute_keys)
            pigeon_list[pigeon_name][attribute_keys] << specifics.to_s
          else
            pigeon_list[pigeon_name].merge!(attribute_keys => [specifics.to_s])
          end
    else pigeon_list[pigeon_name]={attribute_keys => [specifics.to_s]}
    end
  end
end
end
  pigeon_list
  #binding.pry
end