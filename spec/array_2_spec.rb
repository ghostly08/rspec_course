RSpec.describe Array do
  subject(:sally) do
     ['a', 'b']
  end

  it 'subject has a length of two and can remove elements' do
    expect(sally.length).to eq(2)
    sally.pop()
    expect(sally.length).to eq(1)
  end

  it 'sally is equal to the original array' do
    expect(sally.length).to eq(2)
  end
end
