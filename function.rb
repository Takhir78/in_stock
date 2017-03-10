def in_stock(grocery_store, item)
  item = item.downcase

  grocery_store.has_key?(item) && grocery_store[item] > 0
end

def stock_statement(grocery_store, item)
  item = item.downcase

  if in_stock(grocery_store, item)
    "Yes, we have #{grocery_store[item]} items of #{item} in stock."
  else
    "No, I'm sorry but we don't have #{item} in stock."
  end
end
