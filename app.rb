require 'sinatra'
require 'json'
require_relative 'person/person'
require_relative 'metric/linear'
require_relative 'metric/temperature'

class App < Sinatra::Base
  get '/' do
    "Hello, world! This is a app.\n"
  end

  get '/frank-says' do
    "Put this in your pipe & smoke it!\n"
  end

  get '/person/:age/is_major' do
    content_type :json
    age = params[:age].to_i
    person = Person.new('fake name', age)
    { age: age, is_major: person.is_major? }.to_json
  end

  get '/metrics/linear/:orig_type/:value/:dest_type' do
    content_type :json
    orig_type = params[:orig_type]
    dest_type = params[:dest_type]
    value = params[:value].to_i
    metric = LinearMetric.new(value, orig_type)
    { value: value, orig_type: orig_type, dest_type: dest_type, conversion_value: metric.send("to_".concat(dest_type))}.to_json
  end

  get '/metrics/temperature/:orig_type/:value/:dest_type' do
    content_type :json
    orig_type = params[:orig_type]
    dest_type = params[:dest_type]
    value = params[:value].to_i
    temperature = TemperatureMetric.new(value, orig_type)
    { value: value, orig_type: orig_type, dest_type: dest_type, conversion_value: temperature.send("to_".concat(dest_type))}.to_json
  end

end