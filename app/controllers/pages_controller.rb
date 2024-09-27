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
    rate = (rate_pp/100)/12
    r = rate.to_f
    years = params.fetch(:n).to_i
    periods = (years * 12).to_i
    pv = params.fetch(:pv).to_f
    numr = r*pv
    denom = 1-((1 + r)**-periods)

    @apr = rate_pp.to_fs(:percentage, { :precision => 4} ) 
    @years = years
    @principal = pv.to_fs(:currency, { :precision => 2})

    @payment = (numr/denom).to_fs(:currency, { :precision => 2 })


    render({ :template => "pages_templates/payment_result"})
  end

  def random
    render({ :template => "pages_templates/random"})
  end

  def random_results
    @min = params.fetch(:user_min).to_f
    @max = params.fetch(:user_max).to_f
    @result = rand(@min..@max)
    # @result = rand(@min..@max)
    render({ :template => "pages_templates/random_result"})
  end
end
