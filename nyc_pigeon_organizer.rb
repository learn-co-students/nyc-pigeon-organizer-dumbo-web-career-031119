def nyc_pigeon_organizer(data)
  # write your code here!
  new_pigeon = {}
  name_sub = ""
  data.each do |key, values|
    values.each do |att, names|
      names.each do |name|
        # imo, line 9 is the most important line as it helps distributes names to its respective attribute
        new_pigeon[name] ||= {}
        new_pigeon[name][key] ||= []
        new_pigeon[name][key].push(att.to_s)
      end
    end
  end
  new_pigeon
end