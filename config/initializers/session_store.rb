Rails.application.config.session_store :active_record_store, :key => "_store_management_session"
ActionDispatch::Session::ActiveRecordStore.session_class = "Session"
