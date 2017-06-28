class AddAttachmentAvatarUrlToUsers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :users do |t|
      t.attachment :avatar_url
    end
  end

  def self.down
    remove_attachment :users, :avatar_url
  end
end
