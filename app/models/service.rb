class Service < ApplicationRecord
    has_many :service_usages, dependent: :destroy

    validates :name, presence: true
    validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}
    validates :is_active, presence: true
end