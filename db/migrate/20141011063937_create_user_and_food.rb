class CreateUserAndFood < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string :uuid
      t.string :name
      t.datetime :lastlogined_at

      t.timestamps
    end
    
    create_table :foods do |t|
    	t.integer :user_id
      t.integer :will_eat
      t.integer :amount

      t.timestamps
    end

    create_table :follows do |t|
      t.integer :user_id
      t.integer :follow_id

      t.timestamps
    end

  end
end
