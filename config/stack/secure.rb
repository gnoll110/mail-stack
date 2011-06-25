package :cyrus, :provides => :authent do
  description 'Cyruc SASL'
  apt %w( libsasl2-modules libsasl2-modules-sql libgsasl7
          libauthen-sasl-cyrus-perl sasl2-bin 
          libpam-mysql libpam-pgsql)
  
end

package :tsl, :provides => :encrypt do
  description 'TSL'
  # no apt, all postfix config settings
  
end

package :shorewall, :provides => :firewall do
  description 'Shorewall'
  apt %w( shorewall-common shorewall-perl shorewall-doc )
  
end

