module PostsHelper
  def poster_name(post)
    content_tag(:em, post.user.name) if user_signed_in?
  end
end
