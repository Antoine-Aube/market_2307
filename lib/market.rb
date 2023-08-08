class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map {|vendor| vendor.name}
  end

  def vendors_that_sell(item)
    @vendors.map {|vendor| vendor if vendor.inventory.keys.include?(item)}.compact
  end

  def sorted_item_list
    @vendors.flat_map {|vendor| vendor.inventory.keys.map {|item| item.name}}.sort.uniq
  end

  def total_inventory
    market_inventory = Hash.new { |hash, key| hash[key] = { quantity: 0, vendors: [] } }

    @vendors.each do |vendor|
      vendor.inventory.each do |item, quantity|
        market_inventory[item][:quantity] += quantity
        market_inventory[item][:vendors] << vendor
      end
    end

    market_inventory
  end

  def overstocked_items
    total_inventory.select {|key, values| key if values[:quantity] > 50 && values[:vendors].count > 1}.keys
  end
end