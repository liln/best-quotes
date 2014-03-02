class QuotesController < Rulers::Controller
  def a_quote
    @adjective = "fine"
    @noun = "coffee"
    render :a_quote
  end

  def exception
    raise "It's a bad one!"
  end
end
