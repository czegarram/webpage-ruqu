class ContactController < ApplicationController
  # This action uses query string parameters because it gets run
  # by an HTTP GET request, but this does not make any difference
  # to the way in which the parameters are accessed. The URL for
  # this action would look like this in order to list activated
  # clients: /clients?status=activated
  skip_before_action :verify_authenticity_token

  def test
    @object = JSON.load(params["temp"])
    ContactMailer.contact_email("dtowong@gmail.com",@object["name"],@object["email"],
      @object["subject"],@object["message"]).deliver 
    render text: "OK"
  end
end