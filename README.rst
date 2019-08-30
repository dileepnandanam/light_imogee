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
Example setup

#config/initializers/imogee.rb

.. code:: bash

    LightImogee::Data.set_imogee_type('browser')
    LightImogee::Data.add_imogee({
      ":)" => "slightly smiling face",

      "8D" => "grinning squinting face",
      "':D" => "grinning face with sweat",
      "(rofl)" => "rolling on the floor laughing",
      "(kiss)" => "face blowing a kiss",
      ":p" => "face with tongue",
      "(sleeping)" => "sleeping face",
      ":X" => "pouting face",
      ":/" => "confused face",
      ":(" => "slightly frowning face",
      ":O" => "face with open mouth",
      "(poo)" => "pile of poo",
      "(wave)" => "waving hand",
      "(victory)" => "victory hand",
      "(beer)" => "beer mug",
      "(sun)" => "sun with face",
      "(thinking)" => "thinking face",
      ":|" => "expressionless face",
      ":D" => "grinning face"
    })
    

#_imogee_picker.html.haml
  
.. code:: bash
  
    .imogee-list
    - LightImogee::Data.get_imogee_map.each do |imogee, name|
      .imogee.pull-left{data: {imogee: imogee}}
        = with_imogee imogee.dup


#chat_form.html.haml

.. code:: bash

    = f.input :chat_body
    = render partial: 'impgee_picker'


#imogee_picker.js

.. code:: bash
    
    $(document).on('click', '.imogee', function() {
		textarea = $(this).closest('.imogee-list').siblings('.form-group').find('textarea')
		$(textarea).val($(textarea).val() + $(this).data('imogee').trim())
	})
