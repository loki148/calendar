class Event < ApplicationRecord
    validates :time_from, :time_to, :date_from, :name, :group, presence: :true

end