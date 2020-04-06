- run:
	@docker-compose down
	@docker-compose up -d --build

- test:
	@go test -v ./internal/handlers/interfaceHandler_test.go  

- cli:
	@go run ./cmd/cli/main.go ./cmd/cli/http_request.go 