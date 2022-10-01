class ProgrammingLanguage
  attr_reader :name

  def initialize(name = 'Ruby')
    @name = name
  end
end

RSpec.describe 'ProgrammingLanguage' do
  let(:language) {ProgrammingLanguage.new('Python')}

  it 'should store the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'With not argument' do
    let(:language) {ProgrammingLanguage.new} # Language has a new value in this scope

    it 'should default Ruby as the name' do
      expect(language.name).to eq('Ruby')
    end
  end
end
