require 'minitest/spec'
require 'minitest/autorun'
require 'calculator'

describe 'Calculator' do

  before do
    @calculator = Calculator.new
    def get_name
      'Rodrigo Saffie'
    end
  end

  it 'should work' do
    @calculator.greeting.must_equal 'Rodrigo Saffie'
  end

end
