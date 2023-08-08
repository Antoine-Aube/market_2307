require './lib/item'

RSpec.describe Item do 
  let(:item1) {Item.new({name: 'Peach', price: "$0.75"})}
  let(:item2) {Item.new({name: 'Tomato', price: '$0.50'})}

  describe "#initialize" do 
    it{ expect(item1).to be_a Item }
    it{ expect(item2).to be_a Item }
    it{ expect(item1.name).to eq('Peach') }
    it{ expect(item2.name).to eq("Tomato") }
    it{ expect(item1.price).to eq(0.75) }
    it{ expect(item2.price).to eq(0.5) }
  end
end