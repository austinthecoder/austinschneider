class Page < Hashie::Dash

  property :path
  property :modified_at
  property :modification_frequency, :default => 'weekly'
  property :priority, :default => '0.5'

end