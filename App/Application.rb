# Usar Heroku como plataforma de despliegue de aplicaciones
# En windows https://devcenter.heroku.com/articles/getting-started-with-jruby#introduction
# Rails en windows hasta el paso 2: http://guides.railsgirls.com/install#setup-for-windows
# jruby -S gem install bundler
# gem install bundler
# Instalar openSSL y luego: gem install puma -- --with-opt-dir=c:\openssl
# Instalar el Cliente de Heroku (CLI)
# heroku login
# crear un Gemfile que tenga en cuenta las gemas de la aplicación, puma y openssl
# bundle install puma