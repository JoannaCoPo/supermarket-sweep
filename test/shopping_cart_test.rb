require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'
require 'pry'

class CartTest < Minitest::Test
  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_instance_of ShoppingCart, cart
  end

  # def test_it_has_attributes
  #   cart = ShoppingCart.new("King Soopers", "30items")
  #   assert_equal "King Soopers", cart.name
  #   assert_equal 30, cart.capacity
  #   assert_equal [], cart.products
  # end

  def test_it_has_a_name
    skip
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_equal "King Soopers", cart.name
  end

  def test_it_has_capacity
    skip
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_equal 30, cart.capacity
  end

  def test_it_has_products
    skip
    product = Product.new(:paper, 'toilet paper', 3.70, '10')
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_equal [], cart.products
  end


  def test_it_can_add_products
    product = Product.new(:paper, 'toilet paper', 3.70, '10')
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    assert_equal [product1], cart.add_product
  end

  # def test_it_can_add_products
  #   cart = ShoppingCart.new("King Soopers", "30items")
  #   product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
  #   product2 = Product.new(:meat, 'chicken', 4.50, '2')
  #
  #   cart.add_product(product1)
  #   cart.add_product(product2)
  #   assert_equal [product1, product2], cart.add_product
  # end

  #as far as I got

  # def test_it_has_details
  #   cart = ShoppingCart.new("King Soopers", "30items")
  #
  #   expected = {
  #     name: "King Soopers"
  #     capacity: 30
  #   }

    # assert_equal expected, cart.details
  #   assert_equal({name: "King Soopers", capacity: 30}), cart.details
  # or test against specific keys
  # end

  # def test_it_has_total_number_products
  #   cart = ShoppingCart.new("King Soopers", "30items")
  #   product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
  #   product2 = Product.new(:meat, 'chicken', 4.50, '2')
  #   cart.add_product(product1)
  #   cart.add_product(product2)
  #
  #   assert_equal 12, cart.total_number_of_products
  # end

  def test_cart_can_be_full
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')

    cart.add_product(product1)

    assert_equal false, cart.is_full?

    cart.add_product(product2)

    assert_equal true, cart.is_full?
  end

  def test_products_by_category
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')

    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)

    assert_equal [product1, product3], cart.products_by_category(:paper)
  end

end
