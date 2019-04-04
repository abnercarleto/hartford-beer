class Beer < ApplicationRecord
  belongs_to :admin_user, required: true

  scope :paid_out, -> () { where(paid_out: true) }
  scope :not_paid_out, -> () { where(paid_out: false) }
end
