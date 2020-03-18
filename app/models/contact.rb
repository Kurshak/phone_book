# frozen_string_literal: true

class Contact < ApplicationRecord
  belongs_to :user
  validates_plausible_phone :phone, presence: true
end
