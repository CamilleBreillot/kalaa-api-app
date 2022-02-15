class Api::V1::IndicatorsController < Api::V1::BaseController
  def index
    @indicators = Indicator.all
  end

  def show
    @indicator = Indicator.find(params[:id])
  end

  def create
    @indicator = Indicator.new(indicators_params)
    @collection = Collection.find(params[:collection_id])
    @indicator.collection = @collection
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
      render json: { errors: @collection.errors.full_messages },
        status: :unprocessable_entity
    end
end
