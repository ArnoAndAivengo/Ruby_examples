class Order

  attr_reader :items, :placed_at, :time_spent_on_sending_email

  include ItemContainer

  def initialize
    @items = Array.new
  end

  def place
    @placed_at = Time.now
    # thr = Thread.new do
    #   Pony.mail(
    #     :to => StoreApplication::Admin.email,
    #     :from => "My Shop <alex@hotmail.com",
    #     :via => :smtp,
    #     :via_options => {
    #         :address        => 'smtp.yourserver.com',
    #         :port           => '25',
    #         :user_name      => 'user',
    #         :password       => 'password',
    #         :authentication => :plain, # :plain, :login, :cram_md5, no auth by default
    #         :domain         => "localhost.localdomain"}, # the HELO domain provided by the client to the server
    #     subject: "Новое Письмо",
    #     body: "Тело письма")
    # end
    # while(thr.alive?)
    #   puts "."
    #   sleep(1)
    # end
    sent_email_at = Time.now
    @time_spent_on_sending_email = sent_email_at - @placed_at
  end

end