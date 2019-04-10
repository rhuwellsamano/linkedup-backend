class AddUserToChatMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :chat_messages, :user, :string
  end
end
