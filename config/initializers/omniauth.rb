Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '656550334400316' , '6d9ac6b6b73c71ff608a378a60d3c9e6',:scope => 'email,user_birthday,publish_actions', :image => 'access_token.info.image', :image_size => 'large'
end
