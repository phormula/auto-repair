class AddDetailsToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :user_id, :integer
  end
end
