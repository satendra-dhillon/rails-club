OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1318112974974485', '547ef88efbbbdce9de933e0106341672'
end                       


