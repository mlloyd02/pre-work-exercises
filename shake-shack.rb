class ShakeShop
	def initialize
		@milkshakes = []
	end

	def add_milkshake(milkshake)
		@milkshakes.push(milkshake)
	end

	def checkout
		purchase_total = 0
		@milkshakes.each do |milkshake|
			purchase_total += milkshake.price_of_milkshake
		end
		purchase_total
	end
end

class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
  #return  our total price to whoever called for it
   total_price_of_milkshake
  end
end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

purchase1 = ShakeShop.new
nizars_milkshake = MilkShake.new
mikes_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
strawberry = Ingredient.new("Strawberry", 3)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
mikes_milkshake.add_ingredient(banana)
mikes_milkshake.add_ingredient(strawberry)
purchase1.add_milkshake(mikes_milkshake)
purchase1.add_milkshake(nizars_milkshake)


puts purchase1.checkout