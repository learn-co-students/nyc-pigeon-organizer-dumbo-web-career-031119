
require"pry"


def nyc_pigeon_organizer(data)
 pigeon_list ={}

  data.each do |k,v|
    v.each do|color,names|
      names.each do |name|


          if pigeon_list.keys.include?(name) && pigeon_list[name].keys.include?(k)

           pigeon_list[name][k] << color.to_s

         elsif pigeon_list.keys.include?(name) &&  !pigeon_list[name].keys.include?(k)
                  pigeon_list[name][k] = [color.to_s]
                else
                    pigeon_list[name] = {}
                    pigeon_list[name][k] = [color.to_s]




        end
      end
    end
  end
  pigeon_list
end
