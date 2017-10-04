class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
   
  def configure_permitted_parameters
    # Permit the `fullname` parameter along with the other
    # sign up parameters.
  devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
  devise_parameter_sanitizer.permit(:account_update, keys: [:fullname, :avatar])
  end
  
  
  # ici les actions sont inscription (:sign_up) et mise à jour du profil (:account_update).
  # En gros, vous avez autorisé le champ fullname à l'inscription et 
  # lors de la modification du profil. 
  



end
