# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# Added in Section 5 to prevent Rails from creating a new 'errors message' div when a validation fails, as this throws off the styling
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  html_tag.html_safe
end
