
def nyc_pigeon_organizer(data)
  # write your code here!
    pigeon_list = {}

data.each do |lvl1, others|
    others.each do |category, arr|
      arr.each do |name|
        pigeon_list[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  x = pigeon_list.keys
  data[:color].each do |colors, name|
    name.each do |birdName|
      x.each do |i|
        if birdName === i
          pigeon_list[i][:color] << colors.to_s
        end
      end
    end
  end
  data[:gender].each do |sex, type|
    type.each do |birdName|
      x.each do |i|
        if birdName === i
          pigeon_list[i][:gender] << sex.to_s
        end
      end
    end
  end
  data[:lives].each do |loc, name|
    name.each do |birdName|
      x.each do |i|
        if birdName === i
          pigeon_list[i][:lives] << loc
        end
      end
    end
  end
  pigeon_list
end
