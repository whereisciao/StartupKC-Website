urls = []
# urls << '/javascripts'
urls << '/images'
urls << '/css'
# urls << '/favicon.ico'
use Rack::Static, :urls => urls, :root => "output"

run lambda { |env| [200, { 'Content-Type' => 'text/html', 'Cache-Control' => 'public, max-age=86400' }, File.open('output/index.html', File::RDONLY)] }

