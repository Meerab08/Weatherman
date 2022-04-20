# ***********************************************
#       ************ Module 1 ************
module Cream
  def cream?    # It's a complete name "cream?" so don't confuse it with anything
    true
  end
end

# ***********************************************
#       ************ Module 2 ************

module Ice_cream
  def flavour
    p "which flavour do you want to ? "
    flavour = gets.chomp
  end
end

# **************************************************************
# ************ Class in which we'll include modules ************

class Cookie
  include Cream
  p "module has been included in the class"
  include Ice_cream
end

cookie = Cookie.new
p cookie.cream?

ice_flavour = Cookie.new
p ice_flavour.flavour
