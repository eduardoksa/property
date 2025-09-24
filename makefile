RAILS=bin/rails
BUNDLE=bundle
SERVER_PORT?=3000

run:
	@echo "📦 Instalando gems..."
	$(BUNDLE) install

	@echo "📦 Instalando dependências JS/CSS..."
	bin/importmap install || true
	$(RAILS) tailwindcss:install || true

	@echo "🗄️ Preparando banco de dados..."
	$(RAILS) db:create db:migrate db:seed

	@echo "🚀 Subindo servidor Rails em http://localhost:$(SERVER_PORT)"
	$(RAILS) server -p $(SERVER_PORT)
