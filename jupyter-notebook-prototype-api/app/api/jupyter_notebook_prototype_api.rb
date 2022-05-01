require 'grape'
require 'grape-swagger'

class JupyterNotebookPrototypeApi < Grape::API
    format :json
    prefix :api

    mount ConvertApi

    add_swagger_documentation(
        api_version: "v1",
        hide_documentation_path: true,
        mount_path: "swagger_doc",
        hide_format: true
    )
end