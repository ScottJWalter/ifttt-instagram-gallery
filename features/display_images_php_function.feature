Feature: Display instragram images via PHP function
  In order to see instragram images anywhere in a WordPress theme
  As a developer
  I need to be able to call a PHP function from the theme
  
  Scenario: See images in theme
    Given a fresh WordPress is installed
    And the plugin "ifttt-instagram-gallery" is installed (from src)
    And the plugin "ifttt-instagram-gallery" is activated
    And the theme "ifttt-instagram-gallery-testtheme" is installed (from features/themes/ifttt-instagram-gallery-testtheme)
    And the theme "ifttt-instagram-gallery-testtheme" is activated
    And the plugin "ifttt-instagram-gallery-testplugin" is installed (from features/plugins/ifttt-instagram-gallery-testplugin.php)
    And the plugin "ifttt-instagram-gallery-testplugin" is activated
    And the option "ifttt_instagram_gallery_testplugin_content_struct" has the serialized content struct
      | Caption   | My Instagram image |
      | Url       | http://example.com |
      | Image     | ifttt_instagram_test_image.jpg |
    And the image "ifttt_instagram_test_image.jpg" is copied to the webserver
    And the admin post action "ifttt_instagram_gallery_testplugin_load_images" is invoked
    When I go to "/"
    Then I should see images in section "ifttt_instagram_gallery_images()"
      | My Instagram image |
  