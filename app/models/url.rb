class Url < ActiveRecord::Base
  belongs_to :user

  validates :long_url, :presence => true
  validates :long_url, :format => {:with => URI.regexp(['http', 'https'])}

  before_create :shorten_url

  def shorten_url
    temp_url = []
    8.times { temp_url << rand(65..90).chr}
    8.times { temp_url << rand(97..122).chr}
    self.short_url = temp_url.sample(8).join
  end
end
