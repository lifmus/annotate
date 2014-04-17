class WebPage < ActiveRecord::Base

  validates_uniqueness_of :full_url
  validates_uniqueness_of :shortened_url
  ##TODO Validate url

  before_save :shorten_url


  private

  def shorten_url
    self.shortened_url = SecureRandom.hex(2)
  end

end