class Api::V1::FieldsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show, :destroy, :create ]
  def index
    @fields = Field.all
  end

  def show
    @field = Field.find(params[:id])
  end

  def create
    @field = Field.new(field_params)
    if @field.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @field = Field.find(params[:id])
    @field.destroy
    head :no_content
  end

  private

    def field_params
      params.require(:field).permit(:name, :value)
    end

    def render_error
      render json: { errors: @field.errors.full_messages },
        status: :unprocessable_entity
    end
end
