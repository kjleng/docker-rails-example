# README

# ER
Author
- name

Article
- title
- body

# Commands

## start the application
docker compose up -d

## create and migrate development database
docker compose run --rm web rails db:create db:migrate

## migrate test database
docker compose run --rm -e RAILS_ENV=test web rails db:migrate

## run tests
docker compose run --rm -e RAILS_ENV=test web rspec


reference:
https://www.digitalocean.com/community/tutorials/containerizing-a-ruby-on-rails-application-for-development-with-docker-compose
