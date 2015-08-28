class AddTableTasking < ActiveRecord::Migration
  def change
		create_table :taskings do |t|
		t.integer "user_id"			
		t.integer "task_id"
    end
  end
end
