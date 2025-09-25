class ServiceUsage < ApplicationRecord
    belongs_to :service
    belongs_to :reservation

    validates :reservation_id, presence: true
    validates :service_id, presence: true
    validates :quantity, presence: true
    validates :used_at, presence: true

end