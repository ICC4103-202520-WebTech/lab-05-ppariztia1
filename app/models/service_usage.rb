class ServiceUsage < ApplicationRecord
    belongs_to :service
    belongs_to :reservation
end