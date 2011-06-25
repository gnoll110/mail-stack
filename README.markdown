# Mail stack, zero to hero in under five minutes
Scripts for [Sprinkle](http://github.com/crafterm/sprinkle/ "Sprinkle"), the provisioning tool

## How to get your sprinkle on:

* Get a brand spanking new slice / host (Debian or Ubuntu please, other apt-based sytems might work too)
* Install sudo if you are on Debian
* Create yourself a user (use `adduser`), add yourself to the /etc/sudoers file
* Set your slices url / ip address in deploy.rb (config/deploy.rb.example provided)
* Set username in config/deploy.rb if it isn't the same as your local machine (config/deploy.rb.example provided)

From your local system (from the mail-stack directory), run:

    sprinkle -c -s config/install.rb

Extra options:
-t option runs as a test to see if it errors or not, but does no real changes.
-v option runs with verbose messages.

After you've waited for everything to run, you should have a provisioned slice.
Go forth and install your custom configurations.

### My app isn't running!?

No superfluous configuation is included, these scripts focus purely on slice installation. 

You will find the 'superfluous configuration' how to at http://flurdy.com/docs/postfix/
Note this document is for MySQL specifically.
If you select postgres the configuration will need additional tailoring.

### Wait, what does all this install?

* Postfix (Apt)
* Courier IMAP (Apt)
* MySQL (Apt) or PostgreSQL (Apt)
* Amavisd-new (Apt)
* SpamAssassin (Apt)
* ClamAV (Apt)
* Postgrey (Apt)
* SASL (config)
* TLS (Apt)
* Shorewall (Apt)

## Requirements
* Ruby
* Capistrano
* Sprinkle (github.com/crafterm/sprinkle)
* An Ubuntu or Debian based VPS

## Thanks

* [Ben Schwarz](http://github.com/benschwarz) who passenge-stack this is modelled on
* [Marcus Crafter](http://github.com/crafterm) and other Sprinkle contributors
* [Ivar Abrahamsen](http://flurdy.com/docs/postfix/) for 'How to set up a mail server on a GNU / Linux system' 

## Disclaimer

Don't run this on a system that has already been deemed "in production", its not malicious, but there is a fair chance
that you'll ass something up monumentally. You have been warned. 
