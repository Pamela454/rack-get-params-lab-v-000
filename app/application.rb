class Application

  @@items = ["Apples","Carrots","Pears"]
  @@cart = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      @@items.each do |item|
        resp.write "#{item}\n"
      end
    elsif req.path.match(/search/)
      search_term = req.params["q"]
      resp.write handle_search(search_term)
    elsif req.path.match(/cart/)
      @@cart.each do |item|
      if resp.write "#{item}\n"
      elsif
      @@cart == []
      resp.write "Your cart is empty"
      end
    #elsif req.path.match(/add/)
    #  search_term = req.params["item"]
    #  if @@cart.@@items.detect {|item|
    #    item == @@cart}
    #    @@cart << item
    #  else
    #    resp.write "We don't have that item"
    #  end
  #  end
  #  resp.finish
  end

  def handle_search(search_term)
    if @@items.include?(search_term)
      return "#{search_term} is one of our items"
    else
      return "Couldn't find #{search_term}"
    end
  end
end
