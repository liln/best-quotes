class QuotesController < Rulers::Controller
  def index
    quotes = FileModel.all
    render :index, quotes: quotes
  end

  def new_quote
    attrs = {
      "submitter" => "web user",
      "quote" => "A picture is worth one k pixels",
      "attribution" => "Me"
    }
    m = FileModel.create attrs
    render :quote, obj: m
  end

  def update_quote
    quote = Rulers::Model::FileModel.find(3)
    quote["quote"] = "A picture is worth one thousand pixels."
    if quote.save
      render :quote, obj: quote
    else
      # some error :(
    end
  end

  def a_quote
    @adjective = "fine"
    @noun = "coffee"
    render :a_quote
  end

  def submitter_bob
    quotes = FileModel.find_all_by_submitter("Bob")
    render :index, quotes: quotes
  end

  def quote_1
    quote_1 = Rulers::Model::FileModel.find(1)
    render :quote, obj: quote_1
  end

  def exception
    raise "It's a bad one!"
  end
end
