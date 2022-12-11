class ApplicationController < ActionController::Base
  include Maglev::StandaloneSectionsConcern
  before_action :fetch_maglev_site_scoped_sections
end
