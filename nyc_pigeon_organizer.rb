require 'pry'

def nyc_pigeon_organizer(data)
  
  pigeon_list = {}
  
  data.each do |color_gender_lives_symbols, group_details|
    group_details.each do |color_gender_lives_specific, bottom_level|
      bottom_level.each do |bottom_level_specific|  
        
        binding.pry
        
        if !!pigeon_list[bottom_level_specific][color_gender_lives_specific.to_s]
          pigeon_list[bottom_level_specific][color_gender_lives_specific.to_s] << bottom_level_specific
        
        elsif !!pigeon_list[bottom_level_specific]
          pigeon_list[bottom_level_specific][color_gender_lives_symbols] = [bottom_level_specific]
        else 
          pigeon_list[bottom_level_specific] = {color_gender_lives_symbols => [color_gender_lives_specific.to_s]}
        end
    binding.pry
    
      end #end bottom_level each 
    end #end group details each
  end #end data each
  
  pigeon_list
end #end big method





        
#   data.each do |color_key, color_birds|
#       color_birds.each do |specific_color_key , bottom_level|
#           bottom_level.each do |name|
           
            
#               # if !!pigeon_list[name][color]
                
#               # elsif !!pigeon_list[name] 
                
#               # if #check if theo color exists, then shovel more
                
#               #   #pigeon_list[name][color_key] = [specific_color_key.to_s]
#               # else
#               #   pigeon_list[name] = {color_key => [specific_color_key.to_s]}
#               # end
            
#           end #end bottom_level each
#       end #end color_birds each
#   end #end data each
