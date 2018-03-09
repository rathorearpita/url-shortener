class Link < ApplicationRecord
  after_create :generate_shorten

  def generate_shorten
    return if shorten.present?
    self.shorten = self.id.to_s(36)
    self.save
  end
end
