require "pry"
def nyc_pigeon_organizer(data)

  organized_pigeons = {}
  data.each do |final_bird_key, bird_data|
    bird_data.each do |final_bird_value, bird_names|
      bird_names.each do |name|
        # initialize to an empty hash, or do nothing
        organized_pigeons[name] ||= {}
        # initialize to an empty array, or do nothing
        organized_pigeons[name][final_bird_key] ||= [final_bird_value.to_s]
        # if the array exists, append the array with final_bird_value
        organized_pigeons[name][final_bird_key] += [final_bird_value.to_s]
      end
    end
  end
  organized_pigeons
end
