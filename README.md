ifttt-instagram-gallery WordPress project
==================================================

Project description
-------------------
This plugin contains a WordPress plugin in a source folder and additional build and test resources. If you want to use the project files as a WordPress plugin use only the files in the **src** folder!

The official WordPress project is [http://wordpress.org/extend/plugins/ifttt-instagram-gallery](http://wordpress.org/extend/plugins/ifttt-instagram-gallery).

Plugin description
------------------
Loads Instagram images into the blog triggered by IFTTT and the ifttt-wordpress-bridge action

Build
-----
This project contains files to use **Composer** and **Grunt**:

*  The composer file contains the PHP dependencies to execute the **behat** specs (see below)
*  With **grunt wppot** you can update the .pot file according to the used i18n methods in the source code.

Test
----
This projects contains several **behat** specs. A folder **install** with several files and a proper **behat.yml** is necessary. In **install** there must exist:

*  WordPress installation file (for the test a German installation file)
*  Plugin installation files
*  SQLite database file