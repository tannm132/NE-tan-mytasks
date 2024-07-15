# frozen_string_literal: true

# Create Task DB table
class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :subtitle
      t.datetime :due_at
      t.integer :priority
      t.integer :status

      t.timestamps
    end
  end
end
