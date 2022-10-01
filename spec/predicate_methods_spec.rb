RSpec.describe 'predicate methods and predicate matchers' do
  it 'can be tested with ruby methods' do
    results = 16 / 2
    expect(results.even?).to eq(true)
  end

  it 'can be tested with predicate matchers' do
    expect(16 / 2).to be_even # Every predicate method can be a predicate matcher just prefix it with "be_method"
    expect(15).to be_odd
    expect(0).to be_zero
    expect([]).to be_empty
  end

  describe 0 do
    it { is_expected.to be_zero }
  end
end

# puts 0.zero?
# puts 15.zero?

# puts 2.even?
# puts 3.even?

# puts 11.odd?
# puts 16.odd?

# puts [].empty?
# puts [1].empty?
