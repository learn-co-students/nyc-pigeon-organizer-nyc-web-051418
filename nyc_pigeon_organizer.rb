require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  #initializing new hash structure with names
  data.each do |subcategories|
    subcategories[1].each do |colors|
      colors[1].each do |names|
        pigeon_list[names] = {}
        pigeon_list[names][:color] = []
        pigeon_list[names][:gender] = []
        pigeon_list[names][:lives] = []
      end
    end
  end
  #filling new hash with data
  data.each do |subcategories|
    subcategories[1].each do |colors|
      colors[1].each do |names|
        pigeon_list[names][subcategories[0]].push(colors[0].to_s)
      end
    end
  end
  pigeon_list

end
