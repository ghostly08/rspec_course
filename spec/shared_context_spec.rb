RSpec.shared_context 'common' do #We can create it in a separate file an then invoque it
  before do
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'common' # We need include_context to connect with the share_context

  it 'can use outside intance variables' do
    expect(@foods.length).to eq(0)
    @foods << 'Sushi'
    expect(@foods.length).to eq(1)
  end

  it 'can reuse the instance variable across diferent examples' do
    expect(@foods.length).to eq(0)
  end

  it 'can use shared helper method' do
    expect(some_helper_method).to eq(5)
  end
end

RSpec.describe 'second example in diferent file' do # we can use describes in diferents file and call the share_context.
  include_context 'common' # Include_context connects with the share_context method.

  it 'can use shared let variables' do
    expect(some_variable).to eq([1, 2, 3])
  end
end
