class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.column :name, :string
      t.column :phone, :string
      t.column :email, :string
      t.column :address, :string
      t.column :description, :string
      t.column :square_footage, :integer

      t.timestamps null: false
    end
  end

  def up
    add_attachment :requests, :picture
  end

  def down
    remove_attachment :requests, :picture
  end
end
