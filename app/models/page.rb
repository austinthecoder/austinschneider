class Page < Hashie::Dash

  property :path
  property :modified_at
  property :modification_frequency, :default => 'weekly'
  property :priority, :default => '0.5'

  class << self
    def all
      date = Date.parse("2011/02/02")
      [
        new(:path => '/', :modified_at => date),
        new(:path => '/projects', :modified_at => date),
        new(:path => '/contact-me', :modified_at => date),
        new(:path => '/on-the-web', :modified_at => date)
      ]
    end
  end

  def root?
    path == '/'
  end

  def action
    root? ? 'index' : path.gsub(/^\//, '')
  end

  def name
    root? ? 'root' : action.gsub(/\-/, '_')
  end

end