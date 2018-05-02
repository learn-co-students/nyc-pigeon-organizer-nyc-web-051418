require 'pry'

def nyc_pigeon_organizer(data)
  
  pigeon_list = {}
  second_hash = {}

  data.each do |color_key, color_birds|
    color_birds.each do |specific_color_key , name_array|
      name_array.each do |name|
        
        
        
        #binding.pry
        
        data.each do |color_key, color_birds|
          color_birds.each do |specific_color_key , name_array|
            if name_array.include?(name)
              second_hash[color_key] = specific_color_key.to_s
              
            end  
          end
        
        end #end second_hash
        
        pigeon_list[name] = second_hash
        
      end #name_array each  
    end #end color_birds each
  end #end data each
  pigeon_list
  binding.pry
end #end big method