require 'pry'

def nyc_pigeon_organizer(data)
  
  pigeon_list = {}

  data.each_pair do |color_key, color_birds|
    color_birds.each do |specific_color_key , bottom_level|
      bottom_level.each do |name|
        
        
        
        #binding.pry
        
        data.each do |color_key, color_birds|
          bottom_level.each do |name|
            pigeon_list[name] = {color_key => [specific_color_key.to_s]}
            
         #   binding.pry
            
            
            
            
            
            #binding.pry

         #   if bottom_level.include?(name)
            
              
              #binding.pry
          #  end #end if name_array include
            
          #   data.each do |color_key, color_birds|
          # bottom_level.each do |name|
            
          #   #binding.pry

          #   if bottom_level.include?(name)
            
          #     pigeon_list[name] = {color_key => [specific_color_key.to_s]}
          #     #binding.pry
          #   end #end if name_array include
            
            
          
            
            # if pigeon_list[name][:color] == nil
            #   #binding.pry
            #   pigeon_list[name][:color] = []
            # end 
            
            
            #binding.pry
          # pigeon_list[name][:color] << bottom_level
          

          #   if name_array.include?(name)
          #     pigeon_list[name] = {}
          #   end #end if name_array include
          
            
          
            # #$if pigeon_list[name][color_key] 
            #   pigeon_list[name][color_key] << specific_color_key
            # #end

          
            
          end #end color_birds each
        end #end data each
        
      end #name_array each  
    end #end color_birds each
  end #end data each
  pigeon_list
  binding.pry
end #end big method