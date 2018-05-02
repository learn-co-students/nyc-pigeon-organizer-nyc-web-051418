require 'pry'

def nyc_pigeon_organizer(data)
  
  pigeon_list = {}
  second_hash = {}
  second_hash_array = []

  data.each do |color_key, color_birds|
    color_birds.each do |specific_color_key , name_array|
      name_array.each do |name|
        
        
        
        #binding.pry
        
        data.each do |color_key, color_birds|
          color_birds.each do |specific_color_key , name_array|
            
            #binding.pry
            if name_array.include?(name)
              pigeon_list[name] = {}
            end #end if name_array include
          
            #binding.pry
            
            if pigeon_list[name][:color].nil? || pigeon_list[name][:color].empty?
              
              pigeon_list[name][:color] = []
              pigeon_list[name][:color] << color_birds
            end  
          
          
          
            
          end #end color_birds each
        end #end data each
        
      end #name_array each  
    end #end color_birds each
  end #end data each
  pigeon_list
  binding.pry
end #end big method