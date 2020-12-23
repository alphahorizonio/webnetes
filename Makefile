TARGETS=c_echo_client c_echo_server cpp_echo_client cpp_echo_server go_echo_client go_echo_server

all: $(TARGETS)

$(TARGETS):
	@cd examples/$@ && $(MAKE)

clean:
	@rm -rf ./examples/*/{out,build,.go}