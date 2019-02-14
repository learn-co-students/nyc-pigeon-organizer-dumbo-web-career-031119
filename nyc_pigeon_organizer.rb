require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  answer = Hash.new
  data.each do |key1,value1|
    value1.each do |key2,value2|
      value2.each do |name|
        if !(answer[name].is_a?(Hash))
          answer[name] = {}
        end
        if !(answer[name][key1].is_a?(Array))
          answer[name][key1] = []
        end
        answer[name][key1] << key2.to_s
      end
    end
  end
  answer
end