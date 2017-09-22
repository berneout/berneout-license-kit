BUILD=build
COMBINATIONS=$(shell ./combinations)
COMPONENTS=$(shell find components -type f)

all: $(addprefix $(BUILD)/,$(COMBINATIONS))

$(BUILD)/%: $(COMPONENTS) | $(BUILD)
	./generate $* > $@

$(BUILD):
	mkdir -p $(BUILD)

.PHONY: clean

clean:
	rm -rf $(BUILD)
