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
end 