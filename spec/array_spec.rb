RSpec.describe Array do
  it 'should have an empty array' do
    expect(subject.length).to eq(0)  # subject is an instance of the class "Array"
    subject.push('one')
    expect(subject.length).to eq(1)
  end
end
