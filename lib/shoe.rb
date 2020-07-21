class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand
    if brand.find_all{ |e| brand.count(e) > 1 } == true
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
