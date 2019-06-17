class ApplicationController < ActionController::Base
    private

    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :altura, :peso, :imc, :exercicios, :medicamento, :pressao_alta, :problemas_extras, :sintoma])
    end

    # Overwriting the sign_out redirect path method
    def after_sign_out_path_for(resource_or_scope)
      '/users/sign_in'
    end
end
