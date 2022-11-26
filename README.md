# clm-dehyph
Character language models and dehyphenation.

A repo for reviewers of MSZNY 2023 paper titled _Korpusztisztítás és sorvégi kötőjelek kezelése karakteralapú neurális nyelvmodellel_. 

## evaluation of dehyphenation methods

1. preparation
   ```bash
   python3 -m venv venv-clm-dehyph
   source venv-clm-dehyph/bin/activate
   venv-clm-dehyph/bin/python3 -m pip install --upgrade pip
   pip install -r requirements.txt
   make prepare
   ```
   `7z` is needed for this step.

2. evaluation
   ```bash
   make eval-small
   ```
   runs evaluation on a tiny dataset in some minutes.
   You will get `dehyphenation/eval/*h50_*/eval.txt` files
   as they are in this repo.

   ```bash
   make eval
   ```
   runs evaluation on the 100.000 line dataset used in the paper.
   _This takes a long time to run, especially on CPU._
   You will get `dehyphenation/eval/*h100000_*/eval.txt` files
   as they are in this repo.
   They contain the same results which are presented in the paper.

