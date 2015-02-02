module UsersHelper

  def gravatar_for(user, size=50)
    gravatar_id = Digest::MD5::hexdigest(user.email) #gravatar uses MD5 hashing encryption, available in the default 'Digest' ruby library.
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}" #will return the specific gravatar associated with the encrypted email.
    return image_tag(gravatar_url, alt: user.name, class: "gravatar", size: size) #creates an image tag in HTML which alt="user.name" and a class="gravatar"
  end

  def staff?
    return true if self.role == 2 || self.role == 3 # 2 == teacher, 3 == principal.
    return false
  end

  def principal?
    return true if self.role == 3
    return false
  end

end
