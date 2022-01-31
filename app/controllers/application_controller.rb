class ApplicationController < ActionController::Base

  def blank_square_form

    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square

    @num = params.fetch("elephant")
    @square_of_num = @num.to_f ** 2

    render({ :template => "calculation_templates/square_results_form.html.erb"})
  end

  def blank_random_form
    
    render({ :template => "calculation_templates/rand_form.html.erb"})
  end

  def calculate_random

    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)

    render({ :template => "calculation_templates/rand_results.html.erb"})
  end

  def blank_sqrt_form
    
    render({ :template => "calculation_templates/sqrt_form.html.erb"})
  end

  def calculate_sqrt
    
    @num = params.fetch("lion")
    @sqrt_of_num = @num.to_f ** 0.5

    render({ :template => "calculation_templates/sqrt_results.html.erb"})
  end

  def blank_pmt_form

    render({ :template => "calculation_templates/pmt_form.html.erb"})
  end


  def calculate_pmt

    @rate_ann = params.fetch("ann_rate").to_f
    @years = params.fetch("years").to_i
    @months = @years * 12
    @principal = params.fetch("principal").to_f
    @rate_mon = (@rate_ann / 100) / 12
    @numer = @rate_mon * @principal
    @mult = (1 + @rate_mon) ** (- @months)
    @denom = 1 - @mult
    @payment = @numer / @denom


    render({ :template => "calculation_templates/pmt_results.html.erb"})
  end
end
