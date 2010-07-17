require 'sinatra'
require 'sinatra/reloader' if development?
require 'mustache/sinatra'
require 'less'

class Braincloud < Sinatra::Base
  register Mustache::Sinatra
  require 'views/layout'

  set :mustache, {
    :templates => 'templates/',
    :views     => 'views/'
  }


  set :public, 'public'

  get '/' do
    @content = 'Hi'
    mustache :index, :layout => :sick_layout
  end
end
