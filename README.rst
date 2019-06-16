Light Scroll

Light Imogee is a gem for Managing Imogees
To get started:

.. code:: bash

    #Gemfile
    gem 'light_imogee'
    
    
    #config/initializers/light_imogee.rb
    LightImogee::Data.set_imogee_type('browser')
    //other types are facebook, twitter, google

    #example view
    = with_imogee("Hello world :) :O :x")
    

    #binding shortcut symbols for imogee
    step 1. get available shortcut symbols by
    LightImogee::Data.get_imogee_map.keys
    => [":)", ":(", ":'(" ...]

    step 2. get availabe imogees under type
    LightImogee::Data.get_imogee.keys
    => ["grinning face", "slightly frowning face" ....]

    step 3. add your own shortcut symbol
    LightImogee::Data.add_imogee({":*" => "add_imogee"})
