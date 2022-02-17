class Api::V1::IndicatorsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show, :destroy, :create ]
  def index
    @indicators = Indicator.all
  end

  def show
    @indicator = Indicator.find(params[:id])
  end

  def create
    if params[:collection_id]
      @indicator = Indicator.new(indicators_params)
      @collection = Collection.find(params[:collection_id])
      @indicator.collection = @collection
    else
      @indicator = Indicator.new(indicators_params)
    end
    if @indicator.save
      render :show, status: :created # see if need to redirect to
    else
      render_error
    end
  end

  private

    def indicators_params
      params.require(:indicator).permit(:name, :value)
    end

    def render_error
      render json: { errors: @indicator.errors.full_messages },
        status: :unprocessable_entity
    end
end
