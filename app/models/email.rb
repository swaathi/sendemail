class Email < ApplicationRecord
  belongs_to :user
  validates_format_of :receiver, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  after_create :deliver
  after_update :deliver

  def deliver
    ApplicationMailer.send_it(self).deliver_now
  end
end
