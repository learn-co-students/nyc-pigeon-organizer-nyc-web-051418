require "pry"
def nyc_pigeon_organizer(data)

    pigeon_names = {}

    data.each do |category, info|
      info.each do |key2, value|
        value.each do |name|
            pigeon_names[name] || pigeon_names[name] = {}
            pigeon_names[name][category] || pigeon_names[name][category] = []
            pigeon_names[name][category] << key2.to_s
        end
      end
    end
    pigeon_names
end
