class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.references :admin_user, foreign_key: true, null: false
      t.boolean :paid_out, default: false
      t.date :paid_date

      t.timestamps
    end
  end
end
