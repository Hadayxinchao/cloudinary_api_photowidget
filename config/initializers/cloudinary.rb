require 'cloudinary'
Cloudinary.config_from_url(ENV["cloudinary_enviroment_variable"])
Cloudinary.config do |config|
  config.secure = true
end