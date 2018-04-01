require 'item'

describe 'item' do
  let(:items) { Items = Item.new('foo', 10, 20) }

  describe 'Initialze' do
    it 'Initializes with a name' do
      expect(items.name).to eq('foo')
    end

    it 'Initializes with a sell_in value' do
      expect(items.sell_in).to eq 10
    end

    it 'Initializes with a quality value' do
      expect(items.quality).to eq 20
    end
  end

  describe 'to_s' do
    it 'turns item to a string' do
      expect(items.to_s).to eq 'foo, 10, 20'
    end
  end
end
