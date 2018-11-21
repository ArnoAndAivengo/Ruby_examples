require_relative "store_application"

StoreApplication.config do |app|
  app.name = "My Store"
end

@items = []
@items << AntiqueItem.new("car", price: 101, weight: 100)
@items << RealItem.new({:weight => 100, :price => 101, :name => "kettle"})
@items << RealItem.new({:weight => 100, :price => 101, :name => "dishwasher"})

@items.each { |i| puts i.name }

cart = Cart.new("Alex")
cart.add_item RealItem.new({:price => 101, :weight => 100, :name => "car"})
cart.add_item RealItem.new({:price => 120, :weight => 100, :name => "car"})
cart.add_item RealItem.new({:price => 101, :weight => 100, :name => "kettle"})