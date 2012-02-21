class Amazon < Storage
  def initialize(key, username, hostname = nil)
    @key = key
    @username = username
    @hostname |= hostname
  end
end
