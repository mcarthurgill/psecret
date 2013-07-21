var Secret = {
  init: function() {
    $('.new_secret').on('ajax:success', '.create-secret-btn', Secret.renderSecret);
  },

  renderSecret: function(event, data) {
    alert('called');
    // alert(data);
    // e.preventDefault();
    $('.secret_partial_show').append(data.secret_data);
  }
};

$(document).ready(function(){
  Secret.init();
});