require 'grape'
require 'grape-swagger'

class JupyterNotebookPrototypeApi < Grape::API
    format :json
    prefix :api

end