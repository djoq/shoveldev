module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_filter :configure_permitted_parameters
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name << :address << :email << :title << :status << :phone << :rating
    devise_parameter_sanitizer.for(:account_update) << :name << :address << :email << :title << :status << :phone << :rating

  end

end

DeviseController.send :include, DevisePermittedParameters
