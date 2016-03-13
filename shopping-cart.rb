class ShoppingCart
	def initialize
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end

  def checkout
		purchase_total = 0
		@items.each do |item|
			purchase_total += item.price
		end
		if @items.length > 5
			purchase_total = purchase_total - purchase_total * 0.1
		purchase_total
	  end
	end
end

class Item 
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
    @price
  end
end

class Houseware < Item
  def price
  	houseware_price = @price
    if @price > 100
    	houseware_price = @price - @price * 0.05
    end
    houseware_price
  end
end

class Fruit < Item
	def price
  	fruit_price = @price
  	t = Time.now
  	if t.saturday? || t.sunday?
  		fruit_price = @price - @price * 0.1
  	end
  	fruit_price
  end
end

joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(vaccuum)
joshs_cart.add_item(banana)
joshs_cart.add_item(anchovies)
joshs_cart.add_item(rice)

puts joshs_cart.checkout

