Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '234710419965193', 'cacf8e575af4c6c54920ab20960259d6'
end