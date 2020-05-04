class Worker < ApplicationRecord
  has_secure_password

  validates :email, presence: true
  validates :email, uniqueness: true

  def pretty_time
    time = self.total_time / 1000
    return Time.at(time).utc.strftime("%H:%M:%S")
  end
end
