require "mandrill"

class ContactController < ApplicationController
  def new
  end

  def create
  	begin
	    mandrill = Mandrill::API.new ENV['MANDRILL_KEY']
	    message = {
	     "text"=>"Message from #{params[:email]} via aleksandrakolanko.com contact form.\n\n#{params[:message]}",
	     "subject"=>"New message from #{params[:name]}",
	     "from_email"=>"admin@aleksandrakolanko.com",
	     "from_name"=>"#{params[:name]}",
	     "to"=>
	        [{"email"=>"aleksandrakolanko@gmail.com",
	            "name"=>"Aleksandra Kolanko",
	            "type"=>"to"}],
	     "headers"=>{"Reply-To"=>"message.reply@example.com"}}
	    result = mandrill.messages.send message
    	flash[:notice] = "Your message has been sent."
	rescue Mandrill::Error => e
	    flash[:alert] = "There was a problem sending your message."
	end
	redirect_to contact_path
  end

end


