class Quote < ApplicationRecord
  belongs_to :user
  validates :date, :quote_text, :user, presence: true
end
