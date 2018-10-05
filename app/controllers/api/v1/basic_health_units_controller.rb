module Api::V1
  class BasicHealthUnitsController < ApiController
    before_action :decompose_geocode, only: :index

    # GET /api/v1/find_ubs
    def index
      ubs = BasicHealthUnit.by_distance(origin: [@lat, @lon])
                           .page(ubs_params[:page])
                           .per(ubs_params[:per_page])

      render json: ubs,
             adapter: :json,
             meta: { pagination: { page: ubs.current_page,
                                   per_page: ubs.limit_value,
                                   total_entries: BasicHealthUnit.count } }
    end

    private

    def decompose_geocode
      @lat, @lon = ubs_params[:query].split(', ')
    end

    def ubs_params
      puts params
      params.permit(:query, :page, :per_page)
    end
  end
end
