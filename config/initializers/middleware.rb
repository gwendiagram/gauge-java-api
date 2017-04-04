Rails.application.middleware.tap do |middleware|
 # middleware.delete ActiveRecord::Migration::CheckPending
 # middleware.delete ActiveRecord::ConnectionAdapters::ConnectionManagement
 # middleware.delete ActiveRecord::QueryCache
end
