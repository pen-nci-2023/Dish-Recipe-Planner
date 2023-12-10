// PATH: app\javascript\application.js

// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"



$(document).ready(function() {
    $('#add-ingredient').click(function(e) {
        e.preventDefault();
        $('#ingredients').append('<div><input type="text" name="dish[ingredients][]" /></div>');
    });
});

