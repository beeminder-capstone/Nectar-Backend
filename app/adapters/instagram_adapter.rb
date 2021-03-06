require "instagram"

=begin
 * Created by PSU Beeminder Capstone Team on 3/12/2017.
 * Copyright (c) 2017 PSU Beeminder Capstone Team
 * This code is available under the "MIT License".
 * Please see the file LICENSE in this distribution for license terms.
=end
class InstagramAdapter < BaseAdapter
  class << self
    def required_keys
      %i(token)
    end

    def auth_type
      :oauth
    end

    def website_link
      "https://www.instagram.com/"
    end

    def title
      "Instagram"
    end
  end
  
  def client
    client = Instagram.client(:access_token => access_token)
  end
  
  def fetch_media
    user = client.user
	sum = user.counts.media
  end
  
  def fetch_follows
    user = client.user
	sum = user.counts.follows
  end
end
