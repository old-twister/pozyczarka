# frozen_string_literal: true

require_relative '../items_manager'

namespace :items do
  task fix_users_associations: :environment do
    p 'Fixing items associations'
    user = User.find_by_email('twister@autograf.pl')
    ItemsManager.new.fix_items_and_user_associations(user:)
    p 'Finish'
  end
end
