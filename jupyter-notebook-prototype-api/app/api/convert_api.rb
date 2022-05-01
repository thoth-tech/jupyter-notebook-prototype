require 'grape'

class ConvertApi < Grape::API
    desc 'do conversion'
    params do
        requires :file_path, type: String
    end
    post '/convert' do
    end
end