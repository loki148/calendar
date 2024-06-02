class Dayer # name Calendar for some reason doesn't work 
  

  def self.calendar(id_param)
    if id_param == nil
      month = Date.today.all_month.to_a
    elsif id_param > 0
      month = Date.today.months_since(id_param).all_month.to_a
    else
      month = Date.today.months_ago(id_param.abs).all_month.to_a
    end
    this_months_events = data_getter(month[0])
    cal_hsh= setter(month, this_months_events)
    return cal_hsh#, this_months_events
  end 
  

  private
  def self.setter(month, this_months_events)
    cal_hsh = {}
    for key in month
      cal_hsh[key] = []
    end
    for day in month
      for event in this_months_events
        if event.date_to == nil
          to = event.date_from
        else
          to = event.date_to
        end
        for days_of_event in (event.date_from..to).to_a
          if day == days_of_event
            cal_hsh[day] << event
          end
        end
      end

    end
    return cal_hsh
  end

  def self.data_getter(date)
    start = date.beginning_of_month
    end_of_m =  date.end_of_month
    starts_within_month = Event.where("date_from BETWEEN ? AND ?", start, end_of_m)
    ends_within_month = Event.where("date_to BETWEEN ? AND ?", start, end_of_m)
      

      
  
    starts_within_month = starts_within_month.to_a
    ends_within_month = ends_within_month.to_a
    joint = starts_within_month | ends_within_month
    return joint
  
  end



end