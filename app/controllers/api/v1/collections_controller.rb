class Api::V1::CollectionsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_collection, only: [ :show ]

  def index
    @collections = Collection.all
  end

  def show
  end

  def create
    @collection = Collection.new(collection_params)
    @collection.user = current_user
    if @collection.save
      render :show, status: :created
    else
      render_error
    end
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
