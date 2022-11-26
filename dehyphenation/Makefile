
SHELL:=/bin/bash

all:
	@echo "choose explicit target = type 'make ' and press TAB"

S=scripts
I=tests/inputs
O=tests/outputs

TEST_FILE=all_hvg
# ===== MAIN STUFF

### change to local directory containing a large unhyphenated corpus
UNHYPHENATED_CORPUS_DIR=path/to/corpus

HUNSPELL_URL=https://cgit.freedesktop.org/libreoffice/dictionaries/plain/hu_HU/hu_HU

prepare: get_hunspell_data generate_corpus_word_count

get_hunspell_data:
	cd $S; rm -f hu_HU.aff hu_HU.dic ; wget $(HUNSPELL_URL).aff; wget $(HUNSPELL_URL).dic

generate_corpus_word_count:
	python3 $S/extract_words_from_corpus.py $(UNHYPHENATED_CORPUS_DIR)
