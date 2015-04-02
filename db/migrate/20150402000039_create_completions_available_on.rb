class CreateCompletionsAvailableOn < ActiveRecord::Migration
  def change
    change_table :completions do |t|
      t.date :available_on
    end
  end
end
