defmodule Problem1.Solver do

  @moduledoc """
  Solves the problem of finding a number according to the rules outlined
  in the Problem1 README
  """

  def solve( ) do
    numbers = 100_000..999_999
    [ head | tail ] = Enum.to_list( numbers )
    check_number( head )
    solve( tail )
  end

  def solve( range ) do
    [ head | tail ] = range
    check_number( head )
    solve( tail )
  end

  def check_number( num ) do
    digits = Integer.digits( num )

    if first_two_digits_are_product_of_third_and_fourth?( digits ) and
       first_digit_is_double_the_second?( digits ) and
       third_digit_is_one_less_than_fourth?( digits ) and
       last_two_digits_are_the_sum_of_the_third_and_fourth?( digits ) and
       last_digit_is_one_less_than_first?( digits )  and
       fifth_digit_is_two_less_than_the_last?( digits ) and
       sum_of_all_digits_is_23?( digits )
    do

      IO.puts( "The number is: #{num}" )
      exit( :normal )
    end
  end

  def first_two_digits_are_product_of_third_and_fourth?( digits ) do
    [ first_digit  | tail ] = digits
    [ second_digit | tail ] = tail
    [ third_digit  | tail ] = tail
    [ fourth_digit | tail ] = tail

    Integer.undigits( [ first_digit, second_digit ] ) == third_digit * fourth_digit
  end

  def first_digit_is_double_the_second?( digits ) do
    [ first_digit  | tail ] = digits
    [ second_digit | tail ] = tail

    first_digit == second_digit * 2
  end

  def third_digit_is_one_less_than_fourth?( digits ) do
    [ _first_digit  | tail ] = digits
    [ _second_digit | tail ] = tail
    [ third_digit  | tail ] = tail
    [ fourth_digit | tail ] = tail

    third_digit == fourth_digit - 1
  end

  def last_two_digits_are_the_sum_of_the_third_and_fourth?( digits ) do
    [ _first_digit  | tail ] = digits
    [ _second_digit | tail ] = tail
    [ third_digit  | tail ] = tail
    [ fourth_digit | tail ] = tail
    [ fifth_digit  | tail ] = tail
    [ sixth_digit  | tail ] = tail

    Integer.undigits( [ fifth_digit, sixth_digit ] ) == third_digit + fourth_digit
  end

  def last_digit_is_one_less_than_first?( digits ) do
    [ first_digit  | tail ] = digits
    [ _second_digit | tail ] = tail
    [ _third_digit  | tail ] = tail
    [ _fourth_digit | tail ] = tail
    [ _fifth_digit  | tail ] = tail
    [ sixth_digit  | tail ] = tail

    first_digit - 1  == sixth_digit
  end

  def fifth_digit_is_two_less_than_the_last?( digits ) do
    [ _first_digit  | tail ] = digits
    [ _second_digit | tail ] = tail
    [ _third_digit  | tail ] = tail
    [ _fourth_digit | tail ] = tail
    [ fifth_digit  | tail ] = tail
    [ sixth_digit  | tail ] = tail

    fifth_digit  == sixth_digit - 2
  end

  def sum_of_all_digits_is_23?( digits ) do
    Enum.sum( digits ) == 23
  end
end
