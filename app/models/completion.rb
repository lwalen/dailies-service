class Completion < ActiveRecord::Base

  belongs_to :task

  def complete?
    completed_at.try(:to_date) == available_on.to_date
  end

  def complete!
    self.update_attribute(:completed_at, Time.now)
  end

  def incomplete!
    self.update_attribute(:completed_at, nil)
  end
end
