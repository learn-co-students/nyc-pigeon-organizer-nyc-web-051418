require 'pry'

def nyc_pigeon_organizer(data)
  
  pigeon_list = {}
  
  data.each do |types, data|
    data.each do |type, values|
      values.each do |name|  
        pigeon_list[name] || pigeon_list[name] = {}
        # binding.pry
        pigeon_list[name][types] || pigeon_list[name][types] = []
        pigeon_list[name][types] << type.to_s
      end
    end
  end
  pigeon_list
end










