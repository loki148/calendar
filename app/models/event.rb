class Event < ApplicationRecord
    validates :time_from, :time_to, :date_from, :name, :group, presence: :true

    def starts_today?
        if self.date_from == Date.today 
            return true

        else
            return false
        end

    end
    def ends_today?
        if self.date_to == Date.today 
            return true

        elsif self.date_to.nil? || self.date_to == self.date_from
            self.starts_today?

        else
            return false
        end

    end







end