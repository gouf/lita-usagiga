module Lita
  module Handlers
    class Usagiga < Handler
      # insert handler code here
      route(/usagiga/, :usagiga)

      def usagiga(response)
        ::Usagiga.hya(random_name, hide_url: true).lines do |line|
          response.reply line
        end
      end

      def random_name
        [*(1..100), *('a'..'z'), *('A'..'Z')].sample(10).join
      end

      Lita.register_handler(self)
    end
  end
end
