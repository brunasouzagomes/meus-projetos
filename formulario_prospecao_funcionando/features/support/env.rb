#require "pry"
require 'rspec' 
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'yaml'
require 'byebug'
require 'faker'
require 'cpf_faker'
require 'net/http'
require 'pry'

# loads factories
require_relative "../../fixtures/factories/cadastro_factory.rb"

# Arquivo de Configuração do ambiente
ENV['ENV'] = 'local' unless ENV.has_key?'ENV'
ENVIRONMENT = YAML.load_file('./config/environment.yml')[ENV['ENV']]   
