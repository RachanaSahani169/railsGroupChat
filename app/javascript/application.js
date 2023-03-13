// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";
import "channels";
import "@rails/actioncable"   
import "./channels"

import Rails from "@rails/ujs"
window.Rails = Rails;
if(Rails.fire(document, "rails:attachBindings")){
  Rails.start();
}