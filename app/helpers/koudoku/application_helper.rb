module Koudoku
  module ApplicationHelper

    def plan_price(plan)
      "#{number_to_currency(plan.price)}/#{plan_interval(plan)}"
    end

    def plan_interval(plan)
      case plan.interval
      when "month"
        "pr. måned"
      when "year"
        "pr. år"
      when "week"
        "pr. uge"
      when "6-month"
        "pr. halvår"
      when "3-month"
        "pr. kvartal"
      else 
        "pr. måned"
      end
    end
    
  end
end
