require 'minitest/autorun'
require './Calculator'

class TestCalculator < Minitest::test

   setup do
    @calculator = Calculator.new
  end

  def test_calculate_answer_add
    respuesta = @calculator.calculate_answer('add', 1, 1)
    assert_equal respuesta, 2
  end

  def test_calculate_answer_substract
    respuesta = @calculator.calculate_answer('substract', 5, 1)
    assert_equal respuesta, 4
  end

  def test_calculate_answer_mutiply
    respuesta = @calculator.calculate_answer('multiply', 5, 1)
    assert_equal respuesta, 4
  end

  def test_calculate_answer_divide
    respuesta = @calculator.calculate_answer('divide', 5, 1)
    assert_equal respuesta, 5
  end

  def test_inexistant_operation
    assert_raises(@calculator.calculate_answer('rodrigosaffie', 5, 1))
  end

  def test_div_cero
    assert_raises(@calculator.calculate_answer('divide', 5, 0))
  end

end
