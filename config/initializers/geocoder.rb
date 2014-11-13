# config/initializers/geocoder.rb
Geocoder.configure(
  :http_proxy => ENV['QUOTAGUARD_URL'],
  :timeout => 5
)
