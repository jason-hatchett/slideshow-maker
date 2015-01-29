class Video < ActiveRecord::Base
  after_initialize :init
  def init 
    self.views ||= 0
  end
end
