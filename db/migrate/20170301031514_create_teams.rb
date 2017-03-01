class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string 	:first_name, limit: 25
      t.string 	:last_name, limit: 50
      t.string 	:email, limit: 100, default: '' , null: false
      t.text 	:description
      t.string	:address1, limit: 100
      t.string	:address2, limit: 100
      t.string	:city, limit: 25
      t.string	:state, limit: 25
      t.string	:country, limit: 25
      t.integer	:zip
      t.integer :cell_phone
      t.integer :home_phone
      t.string	:social
      t.timestamps
    end
  end
end
