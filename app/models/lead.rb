class Lead < ApplicationRecord
  validates :first_name, :last_name, :gender, :age, :email, :phone_number, presence: true

  enum gender: { male: 0, female: 1, other: 2 }

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
