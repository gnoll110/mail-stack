$:<< File.join(File.dirname(__FILE__), 'stack')

# Require the stack base
%w(core advanced secure postgresql mysql).each do |lib|
  require lib
end

#%w(essential scm ruby_enterprise memcached postgresql mysql).each do |lib|
#  require lib
#end

# ===============
# = Mail servers = 
# ===============

# What we're installing to your server
# Take what you want, leave what you don't
# Build up your own and strip down your server until you get it right. 
policy :stack, :roles => :app do
    #core
  requires :mta                     # Postfix
  requires :popimap                 # Courier IMAP
  requires :database                # MySQL or Postgres
    #advanced
  requires :contentcheck            # Amavisd
  requires :antispam                # SpamAssassin
  requires :antivirus               # ClamAV
  requires :policycheck             # PostGrey
    #secure
  requires :authent                 # Cyrus SASL
  requires :encrypt                 # TLS
  requires :firewall                # Stonewall
end

deployment do
  # mechanism for deployment
  delivery :capistrano do
    begin
      recipes 'Capfile'
    rescue LoadError
      recipes 'deploy'
    end
  end
 
  # source based package installer defaults
  source do
    prefix   '/usr/local'
    archives '/usr/local/sources'
    builds   '/usr/local/build'
  end
end

# Depend on a specific version of sprinkle 
begin
  gem 'sprinkle', ">= 0.2.3" 
rescue Gem::LoadError
  puts "sprinkle 0.2.3 required.\n Run: `sudo gem install sprinkle`"
  exit
end
