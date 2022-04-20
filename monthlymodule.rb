# #****************************   For accessing a single file   ***********************

module Month

  def monthly_data_show

    # calling method
    individual_month_file

  end

  def individual_month_file

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

    max_temp_sum =  min_temp_sum = max_avg = min_avg = humidity_sum = avg_humidi = 0

    count = 0
    line_count = 0
    low_temp_line_count = 0
    humid_count = 0

    expected_file_data.each do |element|

      if @path == "lahore_weather"
        if count <= 1
          count = count.next
          line_count = count.to_i - 2
          low_temp_line_count = count.to_i - 2
          humid_count = count.to_i - 2
          next
        end
      else
        if count < 1
          count=count.next
          line_count = count.to_i - 1
          low_temp_line_count = count.to_i - 1
          humid_count = count.to_i - 1
          next
        end
      end

      count += 1

      if count == expected_file_data.size
        break
      end

      if element[1] == ""
        next
      else
        max_temp_sum = max_temp_sum + element[1].to_i
        line_count += 1
      end

      #***********************************************************
      if element[3] == "" # element[3].empty?
        element.next
      else
        min_temp_sum = min_temp_sum + element[3].to_i
        low_temp_line_count += 1
      end

      #***********************************************************
      if element[8] == ""
        element.next
      else
        humidity_sum = humidity_sum + element[8].to_i
        humid_count += 1
      end
      #**********************************************************
    end
    max_avg = max_temp_sum.to_i / line_count
    min_avg = min_temp_sum.to_i / low_temp_line_count
    avg_humidi = humidity_sum.to_i / humid_count

    p "Highest Average = #{max_avg}C"
    p "Lowest Average = #{min_avg}C"
    p "Average Humidity = #{avg_humidi}%"
  end
end

# # ************************************************************************************
