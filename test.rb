require 'minitest/autorun'
require_relative 'function.rb'

class TestInStock < Minitest::Test
  def test_responds_to_hash_returns_true_for_item_bread
    grocery_store = { 'bread' => 5, 'milk' => 3, 'cheese' => 2, 'chips' => 3, 'pop' => 2, 'frozen_pizza' => 4, 'tacos' => 0 }
    item = 'bread'
    assert_equal(true, in_stock(grocery_store, item))
  end

  def test_responds_to_hash_returns_true_for_item_BREAD
    grocery_store = { 'bread' => 5, 'milk' => 3, 'cheese' => 2, 'chips' => 3, 'pop' => 2, 'frozen_pizza' => 4, 'tacos' => 0 }
    item = 'BREAD'
    assert_equal(true, in_stock(grocery_store, item))
  end
#
  def test_responds_to_hash_returns_true_for_item_chEeSe
    grocery_store = { 'bread' => 5, 'milk' => 3, 'cheese' => 2, 'chips' => 3, 'pop' => 2, 'frozen_pizza' => 4, 'tacos' => 0 }
    item = 'chEeSe'
    assert_equal(true, in_stock(grocery_store, item))
  end
#
  def test_responds_to_hash_returns_false_for_item_tacos
    grocery_store = { 'bread' => 5, 'milk' => 3, 'cheese' => 2, 'chips' => 3, 'pop' => 2, 'frozen_pizza' => 4, 'tacos' => 0 }
    item = 'tacos'
    assert_equal(false, in_stock(grocery_store, item))
  end
#
  def test_responds_to_hash_returns_false_for_item_hot_dogs
    grocery_store = { 'bread' => 5, 'milk' => 3, 'cheese' => 2, 'chips' => 3, 'pop' => 2, 'frozen_pizza' => 4, 'tacos' => 0 }
    item = 'hot_dogs'
    assert_equal(false, in_stock(grocery_store, item))
  end

  def test_responds_to_hash_returns_false_for_item_hamburgers
    grocery_store = { 'bread' => 5, 'milk' => 3, 'cheese' => 2, 'chips' => 3, 'pop' => 2, 'frozen_pizza' => 4, 'tacos' => 0 }
    item = 'hamburgers'
    assert_equal(false, in_stock(grocery_store, item))
  end
end

class TestStockStatement < Minitest::Test
  def test_responds_to_hash_returns_true_statement_for_item_bread
    grocery_store = { 'bread' => 5, 'milk' => 3, 'cheese' => 2, 'chips' => 3, 'pop' => 2, 'frozen_pizza' => 4, 'tacos' => 0 }
    item = 'bread'
    assert_equal("Yes, we have 5 items of bread in stock.", stock_statement(grocery_store, item))
  end
#
  def test_responds_to_hash_returns_true_statement_for_item_BREAD
    grocery_store = { 'bread' => 5, 'milk' => 3, 'cheese' => 2, 'chips' => 3, 'pop' => 2, 'frozen_pizza' => 4, 'tacos' => 0 }
    item = 'BREAD'
    assert_equal("Yes, we have 5 items of bread in stock.", stock_statement(grocery_store, item))
  end

  def test_responds_to_hash_returns_true_statement_for_item_chEeSe
    grocery_store = { 'bread' => 5, 'milk' => 3, 'cheese' => 2, 'chips' => 3, 'pop' => 2, 'frozen_pizza' => 4, 'tacos' => 0 }
    item = 'chEeSe'
    assert_equal("Yes, we have 2 items of cheese in stock.", stock_statement(grocery_store, item))
  end

  def test_responds_to_hash_returns_false_for_item_tacos
    grocery_store = { 'bread' => 5, 'milk' => 3, 'cheese' => 2, 'chips' => 3, 'pop' => 2, 'frozen_pizza' => 4, 'tacos' => 0 }
    item = 'tacos'
    assert_equal("No, I'm sorry but we don't have tacos in stock.", stock_statement(grocery_store, item))
  end

  def test_responds_to_hash_returns_false_statement_for_item_hot_dogs
    grocery_store = { 'bread' => 5, 'milk' => 3, 'cheese' => 2, 'chips' => 3, 'pop' => 2, 'frozen_pizza' => 4, 'tacos' => 0 }
    item = 'hot dogs'
    assert_equal("No, I'm sorry but we don't have hot dogs in stock.", stock_statement(grocery_store, item))
  end

  def test_responds_to_hash_returns_false_statement_for_item_hamburgers
    grocery_store = { 'bread' => 5, 'milk' => 3, 'cheese' => 2, 'chips' => 3, 'pop' => 2, 'frozen_pizza' => 4, 'tacos' => 0 }
    item = 'hamburgers'
    assert_equal("No, I'm sorry but we don't have hamburgers in stock.", stock_statement(grocery_store, item))
  end
end
