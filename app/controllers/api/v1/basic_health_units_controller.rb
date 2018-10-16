module Api::V1
  class BasicHealthUnitsController < ApiController

    # GET /api/v1/find_ubs
    def index
      if params[:query].present?
        ubs = BasicHealthUnit.by_distance(origin: decompose_geocode)
                             .page(ubs_params[:page])
                             .per(ubs_params[:per_page])

        render json: ubs,
               adapter: :json,
               meta: { pagination: { page: ubs.current_page,
                                     per_page: ubs.limit_value,
                                     total_entries: BasicHealthUnit.count } }
      else
        render json: '', status: :unprocessable_entity
      end
    end

    private

    def decompose_geocode
      ubs_params[:query].split(',')
    end

    def ubs_params
      puts params
      params.permit(:query, :page, :per_page)
    end
  end
end
