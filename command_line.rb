#**********************************************************************
#********************** Command Line Arguments ************************
#**********************************************************************
require_relative "weathermodule.rb"
class WeatherMan
  include WeatherModule
  def initialize
    @symbol = ARGV[0]
    @year = ARGV[1]
    @path = ARGV[2]
  end

  def show_arguments
    puts "symbol : #{@symbol}"
    puts "year : #{@year}"
    puts "path : #{@path}"
    puts "\n"
  end
end

show = WeatherMan.new
show.yearly_data

#**********************************************************************
