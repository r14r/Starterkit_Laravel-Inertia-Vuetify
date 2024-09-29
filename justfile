default:
	cat justfile

install-php:
	@pnpm     install

install-composer:
	@composer install

install: install-php install-composer


build-frontend:
	@pnpm run build

setup-env:
	@laravel-setup-folder

serve:
	@php artisan serve

run: serve
	
migrate:
	@php artisan migrate

