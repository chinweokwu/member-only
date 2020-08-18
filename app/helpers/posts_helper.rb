module PostsHelper
    def poster_name(post)
        if user_signed_in?
          content_tag(:em,  post.user.name)
        end
    end
end
