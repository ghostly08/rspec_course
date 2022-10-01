RSpec.describe Hash do
  subject(:bob) do  # This is almost equal to use => let(:bob) {{a: 1, b: 2}}
    { a: 1, b: 2}   # subject here is applying to booth examples
  end

  it 'has two key-pair values' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

  describe 'nested example' do
    it 'has two key-pair values' do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end

end
