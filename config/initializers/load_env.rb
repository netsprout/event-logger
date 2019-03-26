begin
  require 'dotenv'
  Dotenv.load('.env.local')
rescue LoadError
  # no-op
end
