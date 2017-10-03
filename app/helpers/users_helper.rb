module UsersHelper
  def gravatar_url(user, options = {size: 80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downce)
    size = options[:size]
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}$d=mm"
  end
end
