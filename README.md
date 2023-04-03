# buger-eats-front-web-ruby

### Ambiente:
* Ruby (versão utilizada para criação do projeto - 3.2.1) com DevKit
https://rubyinstaller.org/downloads/

* Bundler (gem install bundler)

* Chromedriver configurado no path:
Obs.1: faça o download em https://chromedriver.chromium.org/downloads (baixar de acordo com a versão do seu Chrome), descompacte em uma pasta (ex.: C:\chromedriver)
Obs.2: na variável de ambiente PATH, incluir o caminho para a pasta do chromedriver (ex.: C:\chromedriver - sem o chromedriver.exe) - pode ser necessário reiniciar o sistema

### IDE: VSCode
# Extensões úteis:

* Cucumber (Gherkin) Full Support
* Ruby
* Cucumber

### Roteiro para UTILIZAR o projeto:
1. Fazer o clone do projeto
2. Abrir a pasta no VSCode
3. Abrir o terminal (do VSCode, ou o da sua preferência e navegar até a pasta do projeto) e rodar o comando 'bundle install'
4. Para rodar os cenários, utilizar o comando de run do Cucumber:
  ex.: 
  - rodar todos os cenários: 'cucumber'
  - rodar uma feature: bundle exec cucumber -p default -p hml features/specs/my_cadastro/cadastro_dynamic_spec.feature
  - rodar um cenário pela tag: bundle exec cucumber -p default -p hml -t@deliver_regression_dynamic
  - rodar todos os cenários por tag: bundle exec cucumber -p default -p html -t @regressivo

### Roteiro para RECRIAR o projeto:
1. Abrir uma pasta vazia no VSCode
2. Criar o arquivo Gemfile (sem extensão) e incluir:

* source 'http://rubygems.org'

* gem 'cucumber'
* gem 'capybara'
* gem 'selenium-webdriver'
* gem 'rspec'
* gem 'site_prism'
* gem 'pry'
* gem 'faker'
* gem 'cpf_faker', '~> 1.3'
* gem "roo", "~> 2.7.0"

3. Abrir o terminal (do VSCode, ou o da sua preferência e navegar até a pasta do projeto) e rodar o comando 'bundle install'
4. Rodar o comando 'cucumber --init'


### Extras:
  - Configurações do driver no arquivo env.rb
  - para configurar o relatório do cucumber, criar o arquivo cucumber.yml na pasta raiz
  - As pages devem estender de SitePrism:Page para utilizar os recursos do SitePrism
