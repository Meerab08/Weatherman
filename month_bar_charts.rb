# #****************************   For accessing a single file   ***********************

require 'colorize'

module Monthbar

  # include Directorieees

  def monthly_bar_charts

    puts "\n*****************************".yellow
    puts "Hey, we're in monthly bar charts file ".yellow
    puts "*******************************\n".yellow

    # calling method
    demanded_month_file

  end

  def demanded_month_file

    month_arg = @mon_names[@s_month.to_i - 1]
    get_all_files = Dir['*.txt']
    expected_file_data = []

    city_file = get_all_files.each do | file |

      if file.include? "#{@path}_#{@year}_#{month_arg}"
        myFile = File.open("#{@path}_#{@year}_#{month_arg}.txt")

        myFile.each do |values|
          expected_file_data <<values.split(',')
        end

      end
    end

    max_num = min_num = 0

    count = number_count = 0
    high_temperatures = []
    low_temperature = []
    max_temp_day_array = []
    min_temp_day_array = []

    expected_file_data.each do |element|

      # ******************* for specific cities ********************
      if @path == "lahore_weather"
        if count <= 1
          count = count.next
          next
        end
      else
        if count < 1
          count=count.next
          next
        end
      end

      count += 1

      # ***************** for excluding last line ******************
      if count == expected_file_data.size
        break
      end

      # *********************** Highest ****************************
      if element[1] == ""
        next
      else
        max_num = element[1].to_i
        high_temperatures[number_count] = max_num
        max_temp_day_array[number_count] = element[0]
      end

      # ************************ Lowest ****************************
      if element[3] == ""
        next
      else
        min_num = element[3].to_i
        low_temperature[number_count] = min_num
        min_temp_day_array[number_count] = element[0]
      end
      #************************************************************
      number_count += 1

    end

    high_size = high_temperatures.size
    low_size = low_temperature.size

    #************************************************************
    months_short_name = []
    day = []
    high = 0
    low = 0
    #************************************************************
    puts "#{@months_array[@s_month.to_i-1]} #{@year}"

    for i in 0..high_size.to_i - 1 do

      j = high_temperatures[i].to_i
      k = low_temperature[i].to_i
      high = "+".red * j
      low = "+".blue * k

      #************************************************************
      temps_date_array = [max_temp_day_array[i]]

      temps_date_array.each do |value|
        a = value.split('-')
        months_short_name << a[1]
        day << a[2]
      end
      #************************************************************

      puts "#{day[i]} #{high} #{high_temperatures[i]}C"
      puts "#{day[i]} #{low} #{low_temperature[i]}C"

    end


    puts "\n**********************************************************"
    puts "                    BONUS TASK"
    puts "**********************************************************"

    for i in 0..high_size.to_i - 1 do

      j = high_temperatures[i].to_i
      k = low_temperature[i].to_i
      high = "+".red * j
      low = "+".blue * k

      #************************************************************
      temps_date_array = [max_temp_day_array[i]]

      temps_date_array.each do |value|
        a = value.split('-')
        months_short_name << a[1]
        day << a[2]
      end
      #************************************************************

      puts "#{day[i]} #{low}#{high} #{low_temperature[i]}C - #{high_temperatures[i]}C"

    end

  end
end

