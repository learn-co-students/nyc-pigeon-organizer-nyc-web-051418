require 'pry'

def nyc_pigeon_organizer(data)
  
  pigeon_list = {}

  data.each do |color_key, color_birds|
    color_birds.each do |specific_color_key , name_array|
      name_array.each do |name|
        pigeon_list[name] = {}
      end #name_array each  
    end #end color_birds each
  end #end data each
  pigeon_list
  binding.pry
end #end big method