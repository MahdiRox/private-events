Devise.setup do |config|
    # Tell Devise to use Active Record as ORM
    config.responder.error_status = :unprocessable_entity
    config.responder.redirect_status = :see_other
    config.authentication_keys = [:email,:username]
    require 'devise/orm/active_record'
    
  end
  
  