require 'gilded_rose'

describe GildedRose do
  describe '#update_quality' do
    it 'does not change the name' do
      items = [Item.new('foo', 0, 0)]
      GildedRose.new(items).update_quality
      expect(items[0].name).to eq 'foo'
    end
  end

  # let(:items) { Items = [Item.new('foo', 10, 20)]}

  describe '#standard_items' do
    before(:each) do
      @items = [Item.new('foo', 10, 20)]
      GildedRose.new(@items).update_quality
    end

    it 'its sell_in value decreases by 1' do
      # GildedRose.new(items).update_quality
      expect(@items[0].sell_in).to eq 9
    end

    it 'its quality value decreases by 1' do
      expect(@items[0].quality).to eq 19
    end

    

  end


end
