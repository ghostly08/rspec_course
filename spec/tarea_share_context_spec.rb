RSpec.describe Array do
  subject { [1, 2] }

  it 'has an array with two elements' do
    expect(subject).to eq([1, 2])
  end

  it 'has a one-liner example' do
    is_expected.to eq([1, 2])
  end
end
