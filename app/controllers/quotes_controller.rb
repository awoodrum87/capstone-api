class QuotesController < OpenReadController
  before_action :set_quote, only: [:update, :destroy]

  # GET /quotes
  # GET /quotes.json
  def index
    @quotes = Quote.all

    render json: @quotes
  end

  def my_quotes
    @myquotes = current_user.quotes
    render json: @myquotes
  end

  # GET /quotes/1
  # GET /quotes/1.json
  def show
    render json: Quote.find(params[:id])
  end

  # POST /quotes
  # POST /quotes.json
  def create
    # @reviewer = current_user.build_reviewer(reviewer_params)
    # @quote = current_user.build_quotes(quote_params)
    @quote = current_user.quotes.build(quote_params)

    if @quote.save
      render json: @quote, status: :created
    else
      render json: @quote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quotes/1
  # PATCH/PUT /quotes/1.json
  def update
    if @quote.update(quote_params)
      head :no_content
    else
      render json: @quote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quote.destroy

    head :no_content
  end

  def set_quote
    @quote = current_user.quotes.find(params[:id])
  end

  def quote_params
    params.require(:quote).permit(:date, :quote_text)
  end

  private :set_quote, :quote_params
end
