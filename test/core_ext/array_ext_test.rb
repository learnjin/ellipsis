require 'test_helper'

class ArrayExtToAbbrSeries < Test::Unit::TestCase

  def test_empty
    assert_equal '', [].to_abbr_series
  end

  def test_one_element
    assert_equal '1', [1].to_abbr_series
  end

  def test_two_elements
    assert_equal '1, 2', [1, 2].to_abbr_series
  end

  def test_three_elements
    assert_equal '1, 2, 3', [1, 2, 3].to_abbr_series
  end

  def test_more_than_three_elements
    assert_equal '1, 2, ..., 4', [1, 2, 3, 4].to_abbr_series
  end


end


class ArrayExtToConsolidatedSeries < Test::Unit::TestCase

  def test_empty
    assert_equal '', [].to_abbr_set
  end

  def test_single_element 
    assert_equal '1', [1].to_abbr_set
  end

  def test_two_elements
    assert_equal '1, 2', [1,2].to_abbr_set
  end

  def test_non_consecutive_three_elements
    assert_equal '1, 3, 5', [1,3,5].to_abbr_set
  end

  def test_consecutive_three_elements
    assert_equal '1-3', [1,2,3].to_abbr_set
  end

  def test_consecutive_non_consecutive
    assert_equal '1-3, 5, 6', [1,2,3, 5,6].to_abbr_set
  end

  def test_consecutive_non_and_consecutive
    assert_equal '1-3, 5, 7-9', [1,2,3, 5,7,8,9].to_abbr_set
  end

  def test_block
    assert_equal '1-9', [1,2,3].to_abbr_set {|e| "#{e*e}" }
  end

end

