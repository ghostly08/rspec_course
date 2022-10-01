RSpec.describe '#even? method' do # Is useful when the scenari is a "if statement", "when", etc..
  # it 'should return true if number is even'
  # it 'should retun false if number is odd'

  context 'With even number' do # "context" and "nested describe" are exactly the same functionality
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  describe 'With odd number' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end

end
