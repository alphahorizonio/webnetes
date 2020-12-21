all: native wasm

native:
	@docker run -v ${PWD}:/src:z golang sh -c 'cd /src && go build -o out/echo_server main.go'

wasm:
	@docker run -v ${PWD}:/src:z -e GOOS=js -e GOARCH=wasm golang sh -c 'cd /src && go build -o out/echo_server.wasm main.go'

clean:
	@rm -rf out

seed:
	@docker run -it -v ${PWD}/out:/out --entrypoint=/bin/sh -p 19420:19420 schaurian/webtorrent-hybrid -c "/usr/local/bin/webtorrent-hybrid --port 19420 seed /out/*.wasm"