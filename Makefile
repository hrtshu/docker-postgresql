all: build

build:
	@docker build --tag=hrtshu/postgresql .

release: build
	@docker build --tag=hrtshu/postgresql:$(shell cat VERSION) .
