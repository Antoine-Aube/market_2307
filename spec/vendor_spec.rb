require './lib/item'
require './lib/vendor'

RSpec.describe Item do 
  let(:item1) { Item.new({name: 'Peach', price: "$0.75"}) }
  let(:item2) { Item.new({name: 'Tomato', price: '$0.50'}) }
  let(:vendor) { Vendor.new("Rocky Mountain Fresh") }

  describe "#intialize" do 
    it{ expect(vendor).to be_a Vendor }
    it{ expect(vendor.name).to eq("Rocky Mountain Fresh") }
    it{ expect(vendor.inventory).to eq({}) }
  end

  describe "#check_stock and #stock" do
    it "can check stock given at item as an argument" do 
      expect(vendor.check_stock(item1)).to eq(0)
      
      vendor.stock(item1, 30)
      
      expect(vendor.inventory).to eq({item1 => 30})
      
      expect(vendor.check_stock(item1)).to eq(30)
      
      vendor.stock(item1, 25)
      
      expect(vendor.check_stock(item1)).to eq(55)
      
      vendor.stock(item2, 12)
      
      expect(vendor.inventory).to eq({item1 => 55, item2 => 12})
    end
  end
end 