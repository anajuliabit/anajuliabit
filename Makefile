.PHONY: examples

CC = xelatex
RESUME_DIR = resume
SRC_DIR = resume/src
RESUME_SRCS = $(shell find $(SRC_DIR) -name '*.tex')

examples: $(foreach x, resume, $x.pdf)

resume.pdf: $(RESUME_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(RESUME_DIR) $<

clean:
	rm -rf $(RESUME_DIR)/*.pdf
