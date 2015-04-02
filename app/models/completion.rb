class Completion < ActiveRecord::Base

  belongs_to :task

  def complete?
    completed_at.try(:to_date) == available_on.to_date
  end
end
