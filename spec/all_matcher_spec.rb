RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do # Is checking if very value in the array are odd
    # [3, 5, 7].each do |value| # using ruby code (each method)
      # expect(value).to be_odd

    expect([3, 5, 7, 9]).to all(be_odd)
    expect([4, 6, 8, 10]).to all(be_even)
    expect([[], [], []]).to all(be_empty)
    expect([0, 0]).to all(be_zero)
    expect([5, 7, 9]).to all(be < 10)
  end

  describe [3, 5, 7] do
    it { is_expected.to all(be_odd) }
    it { is_expected.to all(be < 10) }
  end
end
