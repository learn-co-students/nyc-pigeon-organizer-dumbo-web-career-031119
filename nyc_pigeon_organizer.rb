
  def nyc_pigeon_organizer(data)
  pigeon_list = {}
    data.collect do |key, value| #key are categories :color and value are cat-data
      value.collect do |k,v| # k are sub-cats "purple","male" and v are array of name data 
        v.collect do |names|
            pigeon_list[names] ||= {}
            pigeon_list[names][key] ||= []
            pigeon_list[names][key] << k.to_s
        end
      end
   end
   pigeon_list
end
