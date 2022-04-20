
module YearSpecific
  def requiredyear

    get_all_files = Dir['*.txt']

    required_files = []
    split_files = []

    is_file_exists = false

    files_array = get_all_files.each do |files|
      split_files << files.split(' ')
      if files.include? "#{@path}_#{@year}"
        required_files << files
        is_file_exists = true
      end
    end

    puts "\n"
    # ******************* For accessing data from all files agains required year   ********************

    unless is_file_exists
      puts "Files not found against this year!"
      exit
    end

    high_temp_day = 0
    high_temp = 0
    low_temp_day = 0
    low_temp = 100
    humidity_check = 0
    hummidity_day = 0

    yealy_data = required_files.each do | data |

      count=0
      file2 = File.open(data)
      read_file = file2.readlines()

      single_file = read_file.each do | file |

        if @path == "lahore_weather" && count <= 1
            count=count.next
            next
        elsif count < 1
            count=count.next
            next
        end

        count += 1
        split_array = file.split(',')

        if count == read_file.size
          break
        end

        # *******************************************

        # For highest Temperature
        if split_array[1].to_i  > high_temp.to_i
            high_temp = split_array[1]

            # For highest Temperature day
            high_temp_day = split_array[0]
        end

        # For Lowest Temperature
        if split_array[3] != ""
          if split_array[3].to_i  < low_temp.to_i
            low_temp = split_array[3]
            low_temp_day = split_array[0]
          end
        end

        # For Max Humidity
        if split_array[7].to_i  > humidity_check.to_i
          humidity_check = split_array[7]
          # For Lowest Temperature day
          hummidity_day = split_array[0]
        end
      end
    end

    date_array = [high_temp_day, low_temp_day, hummidity_day]

    get_months = []
    date_array.each do |date|
      get_months << date.split('-')[1]
    end

    p "Highest : #{high_temp}C on #{@months_array[get_months[0].to_i - 1]}"
    p "Lowest : #{low_temp}C on #{@months_array[get_months[1].to_i - 1]}"
    p "Humidity : #{humidity_check}C on #{@months_array[get_months[2].to_i - 1]}"
  end

  # def get_month_name_from_date(date)
  #   @months_array[date.split('-')[1].to_i]
  # end
end
