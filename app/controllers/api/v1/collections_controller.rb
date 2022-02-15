class Api::V1::CollectionsController < Api::V1::BaseController
  def index
    @collections = Collection.all
  end
end
