class ContactController < ApplicationController
  # This action uses query string parameters because it gets run
  # by an HTTP GET request, but this does not make any difference
  # to the way in which the parameters are accessed. The URL for
  # this action would look like this in order to list activated
  # clients: /clients?status=activated
  def test
    logger.debug params
    logger.debug "Llegue" 
    ContactMailer.contact_email("czegarram@gmail.com").deliver 
    render text: "OK"
  end
end