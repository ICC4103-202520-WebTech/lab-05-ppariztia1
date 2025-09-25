class Service < ApplicationRecord
    has_many :service_usages, dependent: :destroy
end