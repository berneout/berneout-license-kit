BUILD=build
COMBINATIONS=$(shell ./combinations)

all: $(addprefix $(BUILD)/,$(COMBINATIONS))

$(BUILD)/%: components | $(BUILD)
	./generate $* > $@

$(BUILD):
	mkdir -p $(BUILD)
