class CreateUsersTasksAndCompletions < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string     :email
      t.timestamps
    end

    create_table :tasks do |t|
      t.integer    :user_id
      t.string     :name
      t.timestamps
    end

    create_table :completions do |t|
      t.integer    :task_id
      t.datetime   :completed_at
      t.timestamps
    end
  end
end
