class ShoppingCart

  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    #or capacity.delete('items').to_i
    @products = []
  end

  def add_product(product)
    products << product
  end

  # def add_product(product)
  #   @products << product   #or push
  # end

#as far I got

# def details
#   {
#     name: "King Soopers"
#     capacity: 30
#   }
# end

  # def total_number_of_products
  #   @products.sum do |product|
  #     product.quantity
  #   end
  # end

  # def is_full?
  #   total_number_of_products > @capacity
  # end
  #
  # def products_by_category
  #   @products.find_all do |product|
  #     product.category == category
  #   end
  # end
end
