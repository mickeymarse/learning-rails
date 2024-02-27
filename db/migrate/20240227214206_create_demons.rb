class CreateDemons < ActiveRecord::Migration[7.1]
  def change
    create_table :demons do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :social_media

      t.timestamps
    end
  end
end
