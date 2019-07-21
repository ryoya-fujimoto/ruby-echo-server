require 'sinatra'

get '*' do
  hundle(request)
end

post '*' do
  hundle(request)
end

def hundle(request)
  responseTxt = ''

  headers = request.env.select { |k, v| k.start_with?('HTTP_') }
  headers.each do |k, v|
    responseTxt += "#{k}: #{v}\n"
  end

  responseTxt += request.body.read + "\n"
  responseTxt
end
