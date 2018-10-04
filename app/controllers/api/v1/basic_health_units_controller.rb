module Api::V1
  class BasicHealthUnitsController < ApiController

    # GET /api/v1/find_ubs
    def index
      @ubs = BasicHealthUnit.by_distance(origin: basic_health_units_params[:query])
      render json: @ubs
    end

    private

    def basic_health_units_params
      params.permit(:query, :page, :per_page)
    end
  end
end
