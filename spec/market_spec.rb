require './lib/item'
require './lib/vendor'
require './lib/market'

RSpec.desribe Market do 
  let(:item1) { Item.new({name: 'Peach', price: "$0.75"}) }
  let(:item2) { Item.new({name: 'Tomato', price: '$0.50'}) }
  let(:item3) { Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"} }
  let(:item4) { Item.new({name: "Banana Nice Cream", price: "$4.25"} }
  let(:vendor1) { Vendor.new("Rocky Mountain Fresh") }
  let(:vendor2) { Vendor.new("Ba-Nom-a-Nom") }
  let(:vendor3) { Vendor.new("Palisade Peach Shack") }
  let(:market) { Market.new("South Pearl Street Farmers Market") }

  describe "#initialize" do 
    it "exists and has attributes" do 
      expect(market).to be_a Market
      expect(market.name).to eq("South Pearl Street Farmers Market")
      expect(market.vendors).to eq([])
    end
  end
end
