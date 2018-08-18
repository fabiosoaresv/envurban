class CreateInformativos < ActiveRecord::Migration[5.2]
  def change
    create_table :informativos do |t|
      t.string :email

      t.timestamps
    end
  end
end
