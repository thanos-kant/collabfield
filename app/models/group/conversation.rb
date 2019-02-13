class Group::Conversation < ApplicationRecord
    self.table_name = 'group_conversations'
    
    has_and_belongs_to_many :users , :join_table => :group_conversations_users_join_table
    
    has_many :messages, 
             class_name: "Group::Message",
             foreign_key: 'conversation_id', 
             dependent: :destroy
end