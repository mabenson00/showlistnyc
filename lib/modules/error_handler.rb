module ErrorHandler
  def self.included(base)
    base.class_eval do
      rescue_from ActiveRecord::RecordNotFound do |exception|
        Rails.logger.warn(exception)

        log.warn :record_not_found, errors: exception
        render json: { errors: { base: exception.message } }, status: :not_found
      end

      rescue_from ActiveRecord::RecordInvalid do |exception|
        Rails.logger.warn(exception)
        log.warn :record_invalid, errors: exception
        render json: { errors: { base: exception.message } }, status: :unprocessable_entity
      end

      rescue_from ErrorHandler::ActionForbidden do |exception|
        Rails.logger.warn(exception)
        log.warn :action_forbidden, errors: exception
        render json: { errors: { base: 'Action is forbidden' } }, status: :forbidden
      end
    end
  end
end
