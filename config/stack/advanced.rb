package :amavisd, :provides => :contentcheck do
  description 'Postfix'
  apt %w( amavisd-new )

end

package :spamassassin, :provides => :antispam do
  description 'SpamAssassin'
  apt %w( spamassassin spamc )
  
end

package :clamav, :provides => :antivirus do
  description 'ClamAV'
  apt %w( clamav-base libclamav6 clamav-daemon clamav-freshclam )
  
end

package :postgrey, :provides => :policycheck do
  description 'PostGrey'
  apt %w( postgrey )
  
end

