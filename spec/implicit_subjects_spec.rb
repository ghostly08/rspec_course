RSpec.describe Hash do
  it 'should start off empty' do
    expect(subject.length).to eq(0) # subject is refered to Hash class in describe.
    subject[:some_key] = 'some value'
    subject[:another_key] = 'another value'
    expect(subject.length).to eq(2)
  end

  it 'is isolate between examples, subject creates a new hash' do
    expect(subject.length).to eq(0) # for every example "subject" creates a new object. This is a new hash
  end
end
