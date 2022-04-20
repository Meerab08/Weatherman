#**********************************************************************
#********************** Modules and path  ************************
require_relative "yearlymodule.rb"
require_relative "monthlymodule.rb"
require_relative "change_directory.rb"
require_relative "month_bar_charts.rb"
#**********************************************************************
module WeatherModule

  include YearSpecific
  include Month
  # include Directorieees
  include Monthbar

  def yearly_data

    # *********************************************************************
    Dir.chdir "#{@path}"
    # **********************************************************************
    @months_array = ["january", "Febraury", "March", "April", "May", "June", "July", "August", "September", "October","November","December"]
    @mon_names = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]

    # calling
    folder
    split_date_arg

  end

  def split_date_arg
    if @symbol == '-e'
      @year.include?('/') ? errormsg : requiredyear

    elsif @symbol == '-a' || @symbol == '-c'
      @year.include?('/') ? split_year : errormsg

    else
      p "You didn't entered argument for date"
    end
  end

  def errormsg
    p "You entered a wrong argument for date"
  end

  def split_year
    split_year = @year.split('/')
    @year = split_year[0]
    @s_month = split_year[-1]

    @symbol == '-a' ? monthly_data_show :  monthly_bar_charts


  end

  def folder
    spl_path = @path.split('/')
    @path= spl_path[-1]
  end


end

