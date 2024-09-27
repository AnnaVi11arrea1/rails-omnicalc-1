class PagesController < ApplicationController


  def square
    render({ :template => "pages_templates/square" })
  end

  def square_result
    @user_number = params.fetch(:user_number)
    @result = @user_number.to_f * @user_number.to_f
    render({ :template => "pages_templates/square_result"})
  end

  def squareroot
    render({ :template => "pages_templates/squareroot"})
  end

  def squareroot_results
    @user_number = params.fetch(:user_number2)
    @result = Math.sqrt(@user_number.to_f)
    render({ :template => "pages_templates/squareroot_results"})
  end

  def payment
    render({ :template => "pages_templates/payment"})
  end

  def payment_results
    rate_pp = params.fetch(:r).to_f
    rate = (rate_pp/100)/12.to_f
    r = rate.round(4)
    num_periods = params.fetch(:n).to_i
    n = (num_periods * 12).to_i
    pv = params.fetch(:pv).to_f
    numr = r*pv
    denom = 1-((1 + r)**-n)

    @apr = rate_pp.to_fs(:percentage, { :precision => 4} ) 
    @years = num_periods
    @principal = pv.to_fs(:currency)

    payment = (numr/denom).round(2)
    @payment = payment.to_fs(:currency, { :precision => 2 })

    render({ :template => "pages_templates/payment_result"})
  end

  def random
    render({ :template => "pages_templates/random"})
  end

  def random_results
    @min = params.fetch(:user_min).to_i
    @max = params.fetch(:user_max).to_i
    @result = rand(@min..@max)
    render({ :template => "pages_templates/random_result"})
  end
end
