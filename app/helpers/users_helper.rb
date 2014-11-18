module UsersHelper
# Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size: 50 })
                 gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
                 size = options[:size]
                 gravatar_url = "https://secure.gravatar.com/avatar/7965b8d0cd09a6b225e4bf0882d94017=
 #{size}"
                 image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

end
