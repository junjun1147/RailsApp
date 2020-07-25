class Foot < ApplicationRecord
  validates :content, {presence: true,  length: {maximum: 140}}
end
