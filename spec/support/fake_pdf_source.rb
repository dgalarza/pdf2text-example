require 'sinatra/base'

class FakePdfSource < Sinatra::Base
  get '/valid.pdf' do
    valid_file = File.join(
      Rails.root,
      'spec',
      'support',
      'fixtures',
      'assignment.pdf'
    )

    send_file valid_file, disposition: 'attachment'
  end
end
