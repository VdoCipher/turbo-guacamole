class WelcomeController < ApplicationController
  def index
    gem 'vdocipher'

    vdo_api = VdoCipher.new(
      {clientSecretKey: "ENTER API SECRET KEY HERE"},
      "1.1.3"
    );
    @embedcode = vdo_api.play_code("b9d9838b883bb3ccb76536b28845e4dd", "style=\"height:400px;width:640px;max-width:100%%;\"");
    @version = vdo_api.version;
  end
end
