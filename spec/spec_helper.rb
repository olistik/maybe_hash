$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'maybe_hash'

Dir["./spec/support/**/*.rb"].sort.each { |f| require f }

require 'action_pack'
require 'rack/test'
require 'action_controller'
require 'ostruct'
