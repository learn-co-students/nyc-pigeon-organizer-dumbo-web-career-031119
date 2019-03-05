require 'pry'

def nyc_pigeon_organizer(data)
  answer={}
  data.each do |data_type,data_name|
    data_name.each do |key,value|
      value.each do |name|
    #data_type = :color
    #data_name = hash for :color
    #key = :purple
    #value = [theo,peter,lucky]
    # value =>{data_type =>[key.to_s]}
    if answer.key?(name)
      if answer[name].has_key?(data_type)
        answer[name][data_type] << key.to_s
      else 
        answer[name].merge!(data_type =>[key.to_s])
      end
      binding.pry
    else answer[name]={data_type =>[key.to_s]}
  end
end
end
end 
answer
end