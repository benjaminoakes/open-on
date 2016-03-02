require 'rubygems'
require 'json'
require 'sinatra'
require 'sinatra/base'

class OpenOn < Sinatra::Base
  # "GET" because we do the image-loading trick in the bookmarklet.
  get '/store' do
    if_allowed params do
      store(params)
    end
  end

  post '/store' do
    if_allowed params do
      store(params)
    end
  end

  get '/redirect' do
    if_allowed params do
      lines = File.readlines('tmp/url.txt')
      url = lines.first
      redirect url
    end
  end

  get '/' do
    if_allowed params do
      erb :index, :locals => config
    end
  end

  private

  def config
    @config ||= begin
                  raw = File.read('config.json')
                  JSON.parse(raw)
                end
  end

  def if_allowed(params)
    if params['secret'] == config['secret']
      yield
    else
      [401, 'Unauthorized']
    end
  end

  def store(params)
    url = params['url']
    File.open('tmp/url.txt', 'w') { |f| f.puts(url) }
    [200, 'OK']
  end
end
