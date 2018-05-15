class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  BRANDS = []
  def initialize(brand)
    ans = false
    @brand = brand
    BRANDS.each_char { |chr| if chr != brand
                          ans = true
                        else
                          ans = false
                        end
                     }
    if ans
    BRANDS << brand
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
