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

require 'pry'



def nyc_pigeon_organizer(data)
  pigeon_list = {}
  h = {}
data.each do |x|
    array = []
    parent = x[0]
    x[1].each do |z|
      if z[1].include?("Theo")
        array << z[0].to_s
      end
      h[parent.to_sym] = array
      pigeon_list["Theo"] = h
      puts pigeon_list
    end
end
h = {}
data.each do |x|
    array = []
    parent = x[0]
    x[1].each do |z|
      if z[1].include?("Peter Jr.")
        array << z[0].to_s
      end
      h[parent.to_sym] = array
      pigeon_list["Peter Jr."] = h
      puts pigeon_list
    end
end
h = {}
data.each do |x|
    array = []
    parent = x[0]
    x[1].each do |z|
      if z[1].include?("Peter Jr.")
        array << z[0].to_s
      end
      h[parent.to_sym] = array
      pigeon_list["Peter Jr."] = h
      puts pigeon_list
    end
end
h = {}
data.each do |x|
    array = []
    parent = x[0]
    x[1].each do |z|
      if z[1].include?("Lucky")
        array << z[0].to_s
      end
      h[parent.to_sym] = array
      pigeon_list["Lucky"] = h
      puts pigeon_list
    end
end
h = {}
data.each do |x|
    array = []
    parent = x[0]
    x[1].each do |z|
      if z[1].include?("Queenie")
        array << z[0].to_s
      end
      h[parent.to_sym] = array
      pigeon_list["Queenie"] = h
      puts pigeon_list
    end
end
h = {}
data.each do |x|
    array = []
    parent = x[0]
    x[1].each do |z|
      if z[1].include?("Alex")
        array << z[0].to_s
      end
      h[parent.to_sym] = array
      pigeon_list["Alex"] = h
      puts pigeon_list
    end
end
h = {}
data.each do |x|
    array = []
    parent = x[0]
    x[1].each do |z|
      if z[1].include?("Ms. K")
        array << z[0].to_s
      end
      h[parent.to_sym] = array
      pigeon_list["Ms. K"] = h
      puts pigeon_list
    end
end
h = {}
data.each do |x|
    array = []
    parent = x[0]
    x[1].each do |z|
      if z[1].include?("Andrew")
        array << z[0].to_s
      end
      h[parent.to_sym] = array
      pigeon_list["Andrew"] = h
      puts pigeon_list
    end
end

pigeon_list
end

=begin

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  h = {}

  data.each do |x|
    names = x[1].values.flatten.uniq
    names.each do |name|
      binding.pry
      puts name
      array = []
      parent = x[0]
      x[1].each do |z|
        if z[1].include?(name)
          array << z[0].to_s
        end
        h[parent.to_sym] = array
        pigeon_list[name] = h
      end
      h = {}
    end
  end
  pigeon_list
end

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  h = {}
  counter = 0
  data.each do |x|
    names = x[1].values.flatten.uniq
      array = []
      parent = x[0]
      name = names[counter]
      x[1].each do |z|
        if z[1].include?(name)
          array << z[0].to_s
        end
        h[parent.to_sym] = array
        pigeon_list[name] = h
      end
      counter += 1
      puts pigeon_list
    end
  pigeon_list
end
=end
