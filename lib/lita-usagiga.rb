require 'lita'
require_relative 'usagiga/shindan_scrape'
require_relative 'usagiga/usagiga'

Lita.load_locales Dir[File.expand_path(
  File.join('..', '..', 'locales', '*.yml'), __FILE__
)]

require 'lita/handlers/usagiga'

Lita::Handlers::Usagiga.template_root File.expand_path(
  File.join('..', '..', 'templates'),
  __FILE__
)
