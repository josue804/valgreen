class Request < ActiveRecord::Base
  validates :name, presence: true

  validate :has_a_contact

  def has_a_contact
    unless [phone?, email?].include?(true)
      errors.add :base, 'Please provide at least one way for us to contact you!'
    end
  end

end
