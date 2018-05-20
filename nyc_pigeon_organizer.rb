require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


def nyc_pigeon_organizer(data)

  list = {}

#  pigeon_data[:color].values

  data[:color].each do |color, pigeons|
    pigeons.each do |name|
      add_pigeon(list, name) if !list.include?(name)
      list[name][:color] << color.to_s
    end
  end

  data[:gender].each do |gender, pigeons|
    pigeons.each do |name|
      add_pigeon(list, name) if !list.include?(name)
      list[name][:gender] << gender.to_s
    end
  end

  data[:lives].each do |lives, pigeons|
    pigeons.each do |name|
      add_pigeon(list, name) if !list.include?(name)
      list[name][:lives] << lives.to_s
    end
  end

  list

end

def add_pigeon(list, name)
  list[name] = {:color => [], :gender => [], :lives => []}
end

puts "\nCollected:\n #{pigeon_data}"
puts "\nOrganized:\n #{nyc_pigeon_organizer(pigeon_data)}"
