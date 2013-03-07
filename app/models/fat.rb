class Fat < ActiveRecord::Base
    def self.ave_on(date)
      where("date(purchased_at) = ?", date).sum(:fat)
    end
end
