class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid, with: :render_invalid

  def render_invalid(invalid)
    render json: {errors: invalid.record.errors}, status: :unprocessable_entity
  end

end
