wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh; \
bash miniconda.sh -b -p $HOME/miniconda; \
source "$HOME/miniconda/etc/profile.d/conda.sh"; \
hash -r ; \
conda config --set always_yes yes --set changeps1 no ; \
conda update -q conda; \
conda info -a; \
git clone https://github.com/Deezer/spleeter; \
conda install -c conda-forge spleeter; \
spleeter separate -i spleeter/audio_example.mp3 -p spleeter:2stems -o output
