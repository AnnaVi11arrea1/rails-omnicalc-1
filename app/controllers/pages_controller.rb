class PagesController < ApplicationController
  def square
    render({ :template => "pages_templates/square" })
  end

  def square_result
    @user_number = params.fetch(:user_number)
    @result = @user_number.to_i * @user_number.to_i
    render({ :template => "pages_templates/square_result"})
  end

  def squareroot
    render({ :template => "pages_templates/squareroot"})
  end

  def squareroot_results
    @user_number = params.fetch(:user_number2)
    @result = Math.sqrt(@user_number.to_i)
    render({ :template => "pages_templates/squareroot_results"})
  end

  def payment
    render({ :template => "pages_templates/payment"})
  end

  def payment_results
    @principal = params.fetch(:pv).to_f
    @apr = params.fetch(:r).to_f
    @years = params.fetch(:n).to_f

    
    render({ :template => "pages_templates/payment_result"})
  end

  def random
    render({ :template => "pages_templates/random"})
  end
end
