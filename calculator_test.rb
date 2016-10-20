require 'minitest/autorun'
require_relative 'calculator'

class TestCalculator < Minitest::Test

  def setup
    @calculator = Calculator.new
  end

  def test_calculate_answer_add
    respuesta = @calculator.calculate_answer('add', 1, 1)
    assert_equal 2,respuesta
  end

  def test_calculate_answer_substract
    respuesta = @calculator.calculate_answer('subtract', 7, 1)
    assert_equal 6,respuesta
  end

  def test_calculate_answer_mutiply
    respuesta = @calculator.calculate_answer('multiply', 5, 1)
    assert_equal 5,respuesta
  end

  def test_calculate_answer_divide
    respuesta = @calculator.calculate_answer('divide', 5, 1)
    assert_equal 5,respuesta
  end

  def test_inexistant_operation
    assert_raises(@calculator.calculate_answer('rodrigosaffie', 5, 1))
  end

  def test_div_cero
    assert_raises(@calculator.calculate_answer('divide', 5, 0))
  end

  def test_request_calculation_type_1
    respuesta = @calculator.request_calculation_type(1)
    assert_equal 'add',respuesta
  end

  def test_request_calculation_type_2
    respuesta = @calculator.request_calculation_type(2)
    assert_equal 'subtract',respuesta
  end

  def test_request_calculation_type_3
    respuesta = @calculator.request_calculation_type(3)
    assert_equal 'multiply', respuesta
  end

  def test_request_calculation_type_4
    respuesta = @calculator.request_calculation_type(4)
    assert_equal 'divide', respuesta
  end

  def test_request_calculation_type_other_str
    respuesta = @calculator.request_calculation_type('hansfindel')
    assert_equal 'error', respuesta
  end

  def test_request_calculation_type_other_number
    respuesta = @calculator.request_calculation_type(-1)
    assert_equal 'error', respuesta
  end

end
