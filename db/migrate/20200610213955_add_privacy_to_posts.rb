class AddPrivacyToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :privacy, :integer
  end
end
