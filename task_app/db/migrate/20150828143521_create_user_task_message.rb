class CreateUserTaskMessage < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string "name"
    	t.string "email"
    	t.string "password_digest"
    end

    create_table :tasks do |t|
    	t.string "title"
    	t.string "content"
    	t.string "duedate"

    	t.datetime "created_at", null: false
    	t.datetime "updated_at", null: false
    end

    create_table :messages do |t|
    	t.string "content"
    	t.string "attachment"
    	t.integer "sender_id"
    end     
  end
end
