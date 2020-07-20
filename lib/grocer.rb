require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |dict|
    dict.each do |k,v|
      if v == name
        return dict
      end
    end
  end
  nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  consolidated = []
  cart.each do |items|
    dict = {}
    items.each do |k,v|
      dict[k] = v
      if cart.count(k) > 1
        items[:count] = cart.count(k)
      end
    consolidated << dict
end


  