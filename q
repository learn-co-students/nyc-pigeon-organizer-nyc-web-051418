
[1mFrom:[0m /home/mattzuzolo/nyc-pigeon-organizer-nyc-web-051418/nyc_pigeon_organizer.rb @ line 14 Object#nyc_pigeon_organizer:

     [1;34m3[0m: [32mdef[0m [1;34mnyc_pigeon_organizer[0m(data)
     [1;34m4[0m: 
     [1;34m5[0m:   pigeon_list = {}
     [1;34m6[0m:   second_list = {}
     [1;34m7[0m: 
     [1;34m8[0m:   data.each [32mdo[0m |color_key, color_birds|
     [1;34m9[0m:     color_birds.each [32mdo[0m |specific_color_key , name_array|
    [1;34m10[0m:       name_array.each [32mdo[0m |name|
    [1;34m11[0m:         
    [1;34m12[0m:         pigeon_list[name] = second_list
    [1;34m13[0m:         
 => [1;34m14[0m:         binding.pry
    [1;34m15[0m:         
    [1;34m16[0m:         second_list.each [32mdo[0m |individual_name, data|
    [1;34m17[0m:           
    [1;34m18[0m:           
    [1;34m19[0m:         
    [1;34m20[0m:       [32mend[0m
    [1;34m21[0m:         
    [1;34m22[0m:       [32mend[0m [1;34m#name_array each  [0m
    [1;34m23[0m:     [32mend[0m [1;34m#end color_birds each[0m
    [1;34m24[0m:   [32mend[0m [1;34m#end data each[0m
    [1;34m25[0m:   pigeon_list
    [1;34m26[0m:   binding.pry
    [1;34m27[0m: [32mend[0m [1;34m#end big method[0m

