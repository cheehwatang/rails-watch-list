OmniAuth.config.full_host = Rails.env.production? ? 'https://film-redux.herokuapp.com' : 'http://localhost:3000'
OmniAuth.config.allowed_request_methods = %i[post get]