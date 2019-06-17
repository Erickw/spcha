class RegistrationsController < Devise::RegistrationsController
    protected

    def after_sign_up_path_for(resource)
      '/usuarios' # Or :prefix_to_your_route
    end

    def after_sign_out_path_for(resource)
        '/usuarios' # Or :prefix_to_your_route
    end
  end