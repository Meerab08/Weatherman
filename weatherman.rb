# puts "Hey Meerab!";
# puts "";

# # myFile = File.open("Dubai_weather_2004_Aug.txt")
# # abc = myFile.readlines()

# # p abc[2]
# # abc.each do |a|
# #   t=a.split(',')
# #   p t[2]
# # end

# # a = File.expand_path(__FILE__)
# # puts "Absolute pathname of the currently executing file : #{a}"

# # b = File.dirname(File.expand_path(__FILE__))
# # puts "Absolute directory name of the currently executing file : #{b}"

# # ************************************************************************************************
# #                                       Actual Working
# # ************************************************************************************************


# # p Dir.pwd
# # Dir.chdir "./lahore_weather"
# # p "Current directory : #{Dir.pwd}"
# # xyz = Dir['*.txt']
# # # abc = xyz.each { |files| puts files}
# # abc = xyz.each { |files| }

# # files_array = []

# # city_file = abc.each.with_index(1) do | file, index |
# #   if file.include? "lahore_weather_2002"
# #     puts "found : #{file} at index : #{index}"
# #     files_array << file
# #   end
# # end

# # puts "files array"
# # puts files_array



# # *******************************************************************************
# # This code of hadh is creating an error, don't know why

# # weather_info = {
# #   :highest_temp => "Meeru",
# #   :highest_temp_day => 0,
# #   :lowest_temp => 0,
# #   :lowest_temp_day => 0,
# #   :humidity => 0,
# #   :humid_day => 0
# # }

# # weather["zero"] = "null"
# #puts weather_info[:humid_day]
# # *******************************************************************************

# weather_hash = {
#   "highest_temp" => 0,
#   "highest_temp_day" => 0,
#   "lowest_temp" => 0,
#   "lowest_temp_day" => 0,
#   "humidity" => 0,
#   "humid_day" => 0
# }

# puts weather_hash["highest_temp"]
# puts weather_hash["highest_temp_day"]
# puts weather_hash["lowest_temp"]
# puts weather_hash["lowest_temp_day"]
# puts weather_hash["humidity"]
# puts weather_hash["humid_day"]

# p "Current directory before chdir : #{Dir.pwd}"
# Dir.chdir "./lahore_weather"
# p "Current directory : #{Dir.pwd}"
# xyz = Dir['*.txt']
# # abc = xyz.each { |files| puts files}
# abc = xyz.each { |files| }

# files_array = []

# puts "\n"
# city_file = abc.each.with_index(1) do | file, index |
#   if file.include? "lahore_weather_2002_Jan"
#     puts "found : #{file} at index : #{index}"
#     files_array << file
#   end
# end


# puts "\n"
# puts "................  files array  ................."
# puts files_array

# puts "\n"
# puts "................  Lahore January 2002  ................."
# puts "\n"
# lahore_file = File.open("lahore_weather_2002_Jan.txt")
# # lahore_weather_info = lahore_file.read()    // read a file but it's class/type is string
# lahore_weather_lines = File.readlines(lahore_file)
# # puts lahore_weather_info

# # indexes in file
# # high_temp_d = 0, high_temp = 2, low_temp_day = 0, low_temp = 3, humi_dity = y, hum_day = 0
# high_temp_d = 0, high_temp = "0", low_temp_day = 0, low_temp = 100, humid = 0, hum_day = 0

# count=0

# lahore_data = lahore_weather_lines.each do | data|
#   if count<=1
#     count=count.next
#     next
#   end
#   count += 1
#   split_array = data.split(',')

#   if count == lahore_weather_lines.size
#     break
#   end

#   # For highest Temperature
#   if split_array[1].to_i  > high_temp.to_i
#       high_temp = split_array[1]
#       #  For highest Temperature day
#       high_temp_d = split_array[0]
#   end

#   #  For Lowest Temperature
#   if split_array[3].to_i  < low_temp.to_i
#     low_temp = split_array[3]
#     #  For Lowest Temperature day
#     low_temp_day = split_array[0]
#   end

#   #  For Max Humidity
#   if split_array[7].to_i  > humid.to_i
#     humid = split_array[7]
#     #  For Lowest Temperature day
#     hum_day = split_array[0]
#   end


# end
# weather_hash["highest_temp"] = high_temp
# weather_hash["highest_temp_day"] = high_temp_d

# weather_hash["lowest_temp"] = low_temp
# weather_hash["lowest_temp_day"] = low_temp_day

# weather_hash["humidity"] = humid
# weather_hash["humid_day"] = hum_day
# # p "high temperature after check : #{high_temp}"
# p "High Temperature and day : "
# p weather_hash["highest_temp"]
# p weather_hash["highest_temp_day"]

# puts"\n"
# p "Low Temperature and day : "
# p weather_hash["lowest_temp"]
# p weather_hash["lowest_temp_day"]

# puts"\n"
# p "Max Humidity and day : "
# p weather_hash["humidity"]
# p weather_hash["humid_day"]
