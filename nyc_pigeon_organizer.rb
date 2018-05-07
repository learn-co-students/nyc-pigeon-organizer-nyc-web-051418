require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
    data.each do |key, hash| #dynamic for color, gender, lives.
      hash.each do |inner_key, names|
        names.each do |pigeon_name| #additional iteration in order to access the elements in the array. Because pigeon_names will become keys in new_hash.
        if new_hash[pigeon_name] # Since names repeat, we don't want to reset the value. 
          if hash[inner_key].include?(pigeon_name)
            if new_hash[pigeon_name][key]
          new_hash[pigeon_name][key] << inner_key.to_s
        else 
          new_hash[pigeon_name][key] = []
          new_hash[pigeon_name][key] << inner_key.to_s
          end 
         end
        else 
          new_hash[pigeon_name] = {} # This is the syntax for creating the new key in new_hash and it's value is an empty hash.
          new_hash[pigeon_name][key] = [] # dynamic for color, gender, lives.
          new_hash[pigeon_name][key] << inner_key.to_s
        end
          
        end 
       end 
    end 
    new_hash
end