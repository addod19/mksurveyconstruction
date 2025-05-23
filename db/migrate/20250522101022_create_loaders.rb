class CreateLoaders < ActiveRecord::Migration[7.2]
  def change
    create_table :loaders do |t|
      t.date :job_date
      t.string :name_of_client
      t.decimal :amount_charged
      t.decimal :fuel
      t.decimal :balance

      t.timestamps
    end
  end
end
