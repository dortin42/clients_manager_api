class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.integer :interest, default: 0
      t.string :slug, index: true

      t.timestamps
    end
  end
end
