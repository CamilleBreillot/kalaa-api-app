class Api::V1::CollectionsController < Api::V1::BaseController
  before_action :set_collection, only: [ :show ]

  def index
    @collections = Collection.all
  end

  def show
  end

  private
    def set_collection
      @collection = Collection.find(params[:id])
    end

    def collection_params
      params.require(:collection).permit(:name, :date, :asso)
    end

    def render_error
      render json: { errors: @collection.errors.full_messages },
        status: :unprocessable_entity
    end
end
