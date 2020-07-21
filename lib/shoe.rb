class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand
    # BRANDS.delete_if{ |e| BRANDS.count(e) > 1 }
    BRANDS.uniq!  #Returns a new array by removing duplicate values
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
