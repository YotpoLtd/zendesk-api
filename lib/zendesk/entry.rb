module Zendesk
  module Entry

    def get_entries(forum_id)
      make_request("forums/#{forum_id}/entries")
    end

    def get_entry(id)
      make_request("entries/#{id}")
    end

    def create_entrie(input)
      make_request("entries", :create => Zendesk::Main.to_xml('entrie', input))
    end

    def update_entrie(id, input, options = {})
      body = {:update => Zendesk::Main.to_xml('entrie', input)}
      make_request("entries/#{id}", body, options)
    end

    def delete_entrie(id)
      make_request("entries/#{id}", :destroy => true)
    end
  end
end
