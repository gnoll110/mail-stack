package :postfix, :provides => :mta do
  description 'Postfix'
  apt %w( postfix postfix-mysql postfix-pgsql )
  
end

package :courier, :provides => :popimap do
  description 'Courier IMAP'
  apt %w( courier-base courier-authdaemon
          courier-authlib-mysql courier-authlib-postgresql 
          courier-imap courier-imap-ssl courier-ssl )
  
end

