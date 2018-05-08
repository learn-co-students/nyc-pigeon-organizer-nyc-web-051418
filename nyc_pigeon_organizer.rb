require "pry"
def nyc_pigeon_organizer(data)

    pigeon_names = {}

    data.each do |category, info|
      info.each do |sub_cat, deet|
        deet.each do |name|
            pigeon_names[name] ||= {}
            pigeon_names[name][category] ||= []
            pigeon_names[name][category] << sub_cat.to_s
        end
      end
    end
    pigeon_names
end
