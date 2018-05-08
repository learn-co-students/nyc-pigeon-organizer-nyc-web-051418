require "pry"
def nyc_pigeon_organizer(data)

  organized_pigeons = {}
  data.each do |final_bird_key, bird_data|
    bird_data.each do |final_bird_value, bird_names|
      bird_names.each do |name|
        organized_pigeons[name] ||= {}
        if organized_pigeons[name][final_bird_key] == nil
          organized_pigeons[name][final_bird_key] = [final_bird_value.to_s]
        else
          organized_pigeons[name][final_bird_key] += [final_bird_value.to_s]
        end
      end
    end
  end
  organized_pigeons
end
