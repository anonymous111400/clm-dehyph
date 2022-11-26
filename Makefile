
all: prepare eval-small

prepare:
	cd character_language_models ; 7z x -aoa 5-gram-forward.model.7z ; 7z x -aoa 5-gram-backward.model.7z ; 7z x -aoa bilstm_model_512.h5.7z
	cd dehyphenation/scripts ; 7z x -aoa corpus_word_counts.pickle.7z
	cd dehyphenation ; make get_hunspell_data

eval-small:
	cd dehyphenation ; scripts/eval.sh 50

eval:
	cd dehyphenation ; scripts/eval.sh 100000

